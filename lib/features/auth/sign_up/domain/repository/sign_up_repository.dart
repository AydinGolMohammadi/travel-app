import 'package:travel_app/core/resources/data_state.dart';

import 'package:travel_app/features/auth/sign_up/domain/entity/sign_up_entity.dart';
import 'package:travel_app/features/auth/sign_up/domain/params/sing_up_param.dart';

abstract class SignUpRepository {
  Future<DataState<SignUpEntity>> signUpUser(
      {required SignUpParams signUpParams});
}