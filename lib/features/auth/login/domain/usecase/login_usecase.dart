import 'package:travel_app/core/resources/data_state.dart';
import 'package:travel_app/core/usecase/usecase.dart';
import 'package:travel_app/features/auth/login/domain/entity/login_entity.dart';
import 'package:travel_app/features/auth/login/domain/params/login_param.dart';
import 'package:travel_app/features/auth/login/domain/repository/login_repository.dart';

class LoginUseCase implements UseCase<DataState<LoginEntity>, LoginParam> {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<DataState<LoginEntity>> call({required LoginParam params}) {
    return _repository.signUpUser(loginParam: params);
  }
}
