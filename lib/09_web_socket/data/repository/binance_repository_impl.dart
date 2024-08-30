import 'dart:convert';

import 'package:learn_flutter_together/09_web_socket/domain/repository/binance_repository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class BinanceRepositoryImpl implements BinanceRepository {
  final wsUrl = Uri.parse('wss://fstream.binance.com/ws/bnbusdt@aggTrade');

  @override
  Stream<Map<String, dynamic>> binanceStream() {
    final channel = WebSocketChannel.connect(wsUrl);
    return channel.stream.map((e) => jsonDecode(e) as Map<String, dynamic>);
  }
}
