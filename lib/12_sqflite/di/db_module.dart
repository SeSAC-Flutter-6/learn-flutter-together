import 'package:injectable/injectable.dart';
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'di_setup.dart';

@module
abstract class DbModule {
  @dev
  @preResolve
  Future<Database> provideMockDb() async {
    Database db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);
    await db.execute('''
  CREATE TABLE ${WaterIntakeDao.tableName} (
      ${WaterIntakeDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${WaterIntakeDao.columnTimestamp} TEXT,
      ${WaterIntakeDao.columnValue} INTEGER
  )
  ''');
    return db;
  }

  @prod
  @preResolve
  Future<Database> provideRealDb() async {
    final databasesPath = await getDatabasesPath();

    String path = '$databasesPath/demo.db';
    Database db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute('''
  CREATE TABLE ${WaterIntakeDao.tableName} (
      ${WaterIntakeDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${WaterIntakeDao.columnTimestamp} TEXT,
      ${WaterIntakeDao.columnValue} INTEGER
  )
  ''');
    });
    return db;
  }

  @lazySingleton
  WaterIntakeDao get dao => WaterIntakeDao(getIt());
}
