import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter_together/09_web_socket/domain/repository/binance_repository.dart';
import 'package:learn_flutter_together/09_web_socket/presentation/web_socket_state.dart';

class WebSocketViewModel with ChangeNotifier {
  final BinanceRepository _binanceRepository;

  WebSocketState _state = const WebSocketState();

  StreamSubscription<Map<String, dynamic>>? _subscription;

  WebSocketState get state => _state;

  WebSocketViewModel(this._binanceRepository) {
    onStart();
  }

  void onStart() async {
    _subscription = _binanceRepository.binanceStream().listen((item) {
      _state = state.copyWith(
        items: [...state.items, item],
      );
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
