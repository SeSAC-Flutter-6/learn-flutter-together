import 'dart:async';

import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_dao.dart';
import 'package:learn_flutter_together/12_sqflite/data/data_source/water_intake_entity.dart';
import 'package:learn_flutter_together/12_sqflite/domain/repository/water_repository.dart';

class WaterRepositoryImpl implements WaterRepository {
  final WaterIntakeDao _dao;
  final _eventController = StreamController<int>()..add(0);

  WaterRepositoryImpl(this._dao);

  @override
  Future<void> addWaterToday(int value) async {
    final now = DateTime.now();
    final entity = WaterIntakeEntity(
        timestamp: now.millisecondsSinceEpoch.toString(), value: value);
    await _dao.insert(entity);

    _eventController.add(await getTotalWaterToday());
  }

  @override
  Future<int> getTotalWaterToday() async {
    final today = DateTime.now();
    final results = await _dao.selectAll();
    return results
        .where((entity) {
          final date =
              DateTime.fromMillisecondsSinceEpoch(int.parse(entity.timestamp));
          return date.year == today.year &&
              date.month == today.month &&
              date.day == today.day;
        })
        .map((entity) => entity.value)
        .fold<int>(0, (p, e) => p + e);
  }

  @override
  Stream<int> getTotalWaterTodayStream() {
    return _eventController.stream;
  }
}
