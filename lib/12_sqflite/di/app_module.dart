import 'package:injectable/injectable.dart';
import 'package:learn_flutter_together/07_service_locator/anti.dart';
import 'package:learn_flutter_together/12_sqflite/data/repository/water_repository_impl.dart';
import 'package:learn_flutter_together/12_sqflite/domain/repository/water_repository.dart';
import 'package:learn_flutter_together/12_sqflite/presentation/sqflite_view_model.dart';

@module
abstract class AppModule {
  @lazySingleton
  WaterRepository get repository => WaterRepositoryImpl(getIt());

  @injectable
  SqfliteViewModel get viewModel => SqfliteViewModel(getIt());
}
