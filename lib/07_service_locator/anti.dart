import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_flutter_together/06_clean_arch/domain/use_case/get_user_use_case.dart';
import 'package:provider/provider.dart';

final getIt = GetIt.instance;

// Anti 패턴
class Repository {
  final String _title = getIt<String>();
  final int _count = getIt<int>();

  Repository();

  Future<String> getTitle() async {
    return '$_title, $_count';
  }
}

// Anti 패턴
class MainViewModel with ChangeNotifier {
  final useCase = getIt<GetUserUseCase>();
}

// Anti
class MainScreen {
  final viewModel = getIt<MainViewModel>();

  void build() {
  }
}

void main() async {
  final title = '홍길동';
  int count = 10;

  // 의존성 등록
  getIt.registerSingleton<String>(title);
  getIt.registerSingleton<int>(count);
  getIt.registerFactory<MainViewModel>(() => MainViewModel());

  // 의존성 가져다 쓰기
  final repository = Repository();

  print(await repository.getTitle());
}