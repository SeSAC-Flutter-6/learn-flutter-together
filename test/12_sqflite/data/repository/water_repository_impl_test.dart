import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_dao.dart';
import 'package:learn_flutter_together/12_sqflite/data/repository/water_repository_impl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('WaterRepository Test', () async {
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

    final repository = WaterRepositoryImpl(dao);

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
