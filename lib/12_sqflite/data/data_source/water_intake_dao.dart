
// CRUD
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_entity.dart';
import 'package:sqflite/sqflite.dart';

class WaterIntakeDao {
  static const String tableName = 'water_intake';
  static const String columnId = '_id';
  static const String columnValue = 'value';
  static const String columnTimestamp = 'timestamp';

  final Database _db;

  WaterIntakeDao(this._db);

  Future<List<WaterIntakeEntity>> selectAll() async {
    final List<Map<String, dynamic>> results = await _db.rawQuery('SELECT * FROM $tableName');
    return results.map((e) => WaterIntakeEntity.fromMap(e)).toList();
  }

  Future<WaterIntakeEntity> insert(WaterIntakeEntity entity) async {
    final id = await _db.insert(tableName, entity.toMap());
    return entity..id = id;
  }

  Future<int> update(WaterIntakeEntity entity) async {
    return await _db.update(tableName, entity.toMap());
  }

  Future<int> delete(int id) async {
    return await _db.delete(tableName, where: '$columnId = $id');
  }
}