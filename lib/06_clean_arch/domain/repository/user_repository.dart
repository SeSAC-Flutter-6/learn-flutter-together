import 'package:learn_flutter_together/06_clean_arch/domain/model/user.dart';
import 'package:learn_flutter_together/core/result.dart';

abstract interface class UserRepository {
  // 데이터 분기
  Future<Result<User>> getUser();
}
