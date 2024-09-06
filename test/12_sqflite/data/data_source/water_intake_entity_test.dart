import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_dao.dart';
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_entity.dart';
import 'package:learn_flutter_together/12_sqflite/di/di_setup.dart';

void main() {
  test('WaterIntakeDao Test', () async {
    await configureDependencies('dev');

    final WaterIntakeDao dao = getIt();

    final entity = WaterIntakeEntity(timestamp: '1725593164623', value: 1);
    await dao.insert(entity);

    expect((await dao.selectAll()).first.value, 1);

    entity.value = 2;
    var rows = await dao.update(entity);
    expect(rows, 1);

    expect((await dao.selectAll()).first.value, 2);

    rows = await dao.delete(1);

    expect(rows, 1);

    expect((await dao.selectAll()).length, 0);
  });
}
