import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_together/07_service_locator/anti.dart';
import 'package:learn_flutter_together/12_sqflite/presentation/sqflite_view_model.dart';

class SqfliteRoot extends StatelessWidget {
  const SqfliteRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SqfliteViewModel>(
      create: (_) => getIt(),
      child: BlocBuilder<SqfliteViewModel, int>(builder: (context, value) {
        return SqfliteScreen(
          value: value,
          onChangeValue: (newValue) {
            context.read<SqfliteViewModel>().addValue(newValue);
          },
        );
      }),
    );
  }
}

class SqfliteScreen extends StatelessWidget {
  final int value;
  final Function(int) onChangeValue;

  const SqfliteScreen({
    super.key,
    required this.value,
    required this.onChangeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$value',
              style: const TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => onChangeValue(1),
                  child: Text('1'),
                ),
                ElevatedButton(
                  onPressed: () => onChangeValue(2),
                  child: Text('2'),
                ),
                ElevatedButton(
                  onPressed: () => onChangeValue(3),
                  child: Text('3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
