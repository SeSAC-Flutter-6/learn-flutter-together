import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_dao.dart';
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('WaterIntakeDao Test', () async {
    // Mock DB
    Database db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);
    await db.execute('''
  CREATE TABLE ${WaterIntakeDao.tableName} (
      ${WaterIntakeDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${WaterIntakeDao.columnTimestamp} TEXT,
      ${WaterIntakeDao.columnValue} INTEGER
  )
  ''');

    final dao = WaterIntakeDao(db);

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
