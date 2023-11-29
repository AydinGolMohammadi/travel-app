import 'package:travel_app/core/resources/data_state.dart';
import 'package:travel_app/core/usecase/usecase.dart';
import 'package:travel_app/features/auth/login/domain/entity/login_entity.dart';
import 'package:travel_app/features/auth/login/domain/params/login_param.dart';
import 'package:travel_app/features/auth/login/domain/repository/login_repository.dart';
import 'package:travel_app/features/auth/sign_up/domain/entity/sign_up_entity.dart';
import 'package:travel_app/features/auth/sign_up/domain/params/sing_up_param.dart';
import 'package:travel_app/features/auth/sign_up/domain/repository/sign_up_repository.dart';

class SignUpUseCase implements UseCase<DataState<SignUpEntity>,SignUpParams> {
  final SignUpRepository _repository;

  SignUpUseCase(this._repository);

  @override
  Future<DataState<SignUpEntity>> call({required SignUpParams params}) {
    return _repository.signUpUser(signUpParams: params);
  }
}
