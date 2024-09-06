abstract interface class WaterRepository {
  Stream<int> getTotalWaterTodayStream();

  Future<int> getTotalWaterToday();

  Future<void> addWaterToday(int value);
}
