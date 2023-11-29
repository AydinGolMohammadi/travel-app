import 'package:travel_app/core/resources/data_state.dart';
import 'package:travel_app/features/auth/login/domain/entity/login_entity.dart';
import 'package:travel_app/features/auth/login/domain/params/login_param.dart';

abstract class LoginRepository {
  Future<DataState<LoginEntity>> signUpUser(
      {required LoginParam loginParam});
}