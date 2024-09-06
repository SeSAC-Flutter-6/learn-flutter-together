import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '컨설팅 타이머',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ConsultingTimerPage(),
    );
  }
}

class ConsultingTimerPage extends StatefulWidget {
  const ConsultingTimerPage({super.key});

  @override
  _ConsultingTimerPageState createState() => _ConsultingTimerPageState();
}

class _ConsultingTimerPageState extends State<ConsultingTimerPage> {
  static const int hourlyRate = 100000; // 시간당 10만원
  int _seconds = 0;
  bool _isActive = false;
  Timer? _timer;
  final NumberFormat _formatter = NumberFormat("#,###");

  void _toggleTimer() {
    setState(() {
      _isActive = !_isActive;
    });
    if (_isActive) {
      _startTimer();
    } else {
      _stopTimer();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
        if (_seconds == 3600) { // 1시간 경과
          _showAlertDialog();
        }
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel();
  }

  void _resetTimer() {
    _stopTimer();
    setState(() {
      _seconds = 0;
      _isActive = false;
    });
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('알림'),
          content: const Text('1시간이 경과했습니다. 계속 진행하시겠습니까?'),
          actions: <Widget>[
            TextButton(
              child: const Text('종료'),
              onPressed: () {
                Navigator.of(context).pop();
                _resetTimer();
              },
            ),
            TextButton(
              child: const Text('연장'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  String _formatDuration() {
    final duration = Duration(seconds: _seconds);
    return '${duration.inHours.toString().padLeft(2, '0')}:${(duration
        .inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60)
        .toString()
        .padLeft(2, '0')}';
  }

  int _calculateFee() {
    return (_seconds / 3600 * hourlyRate).round();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('컨설팅 타이머')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _formatDuration(),
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineLarge,
            ),
            const SizedBox(height: 20),
            Text(
              '요금: ${_formatter.format(_calculateFee())}원',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineLarge,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _toggleTimer,
                  child: Text(_isActive ? '일시정지' : '시작'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _resetTimer,
                  child: const Text('리셋'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}