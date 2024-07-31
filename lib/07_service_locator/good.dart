import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_flutter_together/06_clean_arch/domain/repository/user_repository.dart';
import 'package:learn_flutter_together/06_clean_arch/domain/use_case/get_user_use_case.dart';
import 'package:provider/provider.dart';

final getIt = GetIt.instance;

class Repository {
  final String _title;
  final int _count;

  const Repository({
    required String title,
    required int count,
  })  : _title = title,
        _count = count;

  Future<String> getTitle() async {
    return '$_title, $_count';
  }

}

class MainViewModel with ChangeNotifier {
  final GetUserUseCase useCase;

  MainViewModel({
    required this.useCase,
  });
}

// Provider
class MainScreen {

  void build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
  }
}

void main() async {
  final title = '홍길동';
  int count = 10;

  // 의존성 등록
  getIt.registerSingleton<String>(title);
  getIt.registerSingleton<int>(count);
  getIt.registerSingleton<GetUserUseCase>(GetUserUseCase(getIt()));
  getIt.registerFactory<MainViewModel>(() => MainViewModel(useCase: getIt()));

  // 의존성 가져다 쓰기
  final repository = Repository(title: getIt(), count: getIt());

  print(await repository.getTitle());
}