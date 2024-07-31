import 'package:flutter/material.dart';
import 'package:learn_flutter_together/06_clean_arch/domain/model/user.dart';
import 'package:learn_flutter_together/06_clean_arch/domain/use_case/get_user_use_case.dart';
import 'package:learn_flutter_together/core/result.dart';

class MainViewModel with ChangeNotifier {
  final GetUserUseCase _getUserUseCase;

  User? user;

  MainViewModel({
    required GetUserUseCase getUserUseCase,
  }) : _getUserUseCase = getUserUseCase;

  void fetchUser() async {
    final result = await _getUserUseCase.execute();

    switch(result) {

      case Success<User>():
        user = result.data;
      case Error<User>():
        // TODO: Handle this case.
    }
  }
}