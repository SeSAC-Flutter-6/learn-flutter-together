abstract interface class BinanceRepository {
  Stream<Map<String, dynamic>> binanceStream();
}
