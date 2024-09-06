import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_together/12_sqflite/domain/repository/water_repository.dart';

class SqfliteViewModel extends Cubit<int> {
  final WaterRepository _waterRepository;

  SqfliteViewModel(this._waterRepository) : super(0) {
    _waterRepository.getTotalWaterTodayStream().listen((value) {
      emit(value);
    });
  }

  void addValue(int value) async {
    await _waterRepository.addWaterToday(value);
  }
}
