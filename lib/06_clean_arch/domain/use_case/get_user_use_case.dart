import 'package:learn_flutter_together/06_clean_arch/domain/model/user.dart';
import 'package:learn_flutter_together/06_clean_arch/domain/repository/user_repository.dart';
import 'package:learn_flutter_together/core/result.dart';

class GetUserUseCase {
  final UserRepository _userRepository;

  GetUserUseCase(this._userRepository);

  // 비즈니스 로직 분기
  Future<Result<User>> execute() async {
    final result = await _userRepository.getUser();

    switch(result) {

      case Success<User>():
        if (result.data.id.isEven) {
          return Result.success(result.data);
        } else {
          return const Result.error('사장님은 홀수가 싫어요');
        }
      case Error<User>():
        return result;
    }
  }
}