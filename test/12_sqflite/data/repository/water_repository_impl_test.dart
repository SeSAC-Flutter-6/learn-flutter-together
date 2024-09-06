import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/12_sqflite/di/di_setup.dart';
import 'package:learn_flutter_together/12_sqflite/domain/repository/water_repository.dart';

void main() {
  test('WaterRepository Test', () async {
    await configureDependencies('dev');

    final WaterRepository repository = getIt();

    int value = await repository.getTotalWaterToday();
    expect(value, 0);

    expect(
      repository.getTotalWaterTodayStream(),
      emitsInOrder([1, 3]),
    );

    await repository.addWaterToday(1);
    value = await repository.getTotalWaterToday();
    expect(value, 1);

    await repository.addWaterToday(2);
    value = await repository.getTotalWaterToday();
    expect(value, 3);

  });
}
