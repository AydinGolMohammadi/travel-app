import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:travel_app/core/datasources/remote/remote_service.dart';
import 'package:travel_app/core/resources/data_state.dart';
import 'package:travel_app/core/utils/exception_parser.dart';
import 'package:travel_app/features/auth/sign_up/domain/entity/sign_up_entity.dart';
import 'package:travel_app/features/auth/sign_up/domain/params/sing_up_param.dart';
import 'package:travel_app/features/auth/sign_up/domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final RemoteService _remoteService;

  const SignUpRepositoryImpl(this._remoteService);

  @override
  Future<DataState<SignUpEntity>> signUpUser({required SignUpParams signUpParams}) async{
    try {
      final httpResponse = await _remoteService.signUpUser(signUpParams: signUpParams);

      if (ExceptionParser.isResponseSuccessful(httpResponse)) {
        return DataSuccess(httpResponse.data);
      }
      return ExceptionParser.getApiDioError(httpResponse);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e.response?.statusCode);
        print(e.response?.data['message']);
      }
      return DataFailed(e);
    }
  }
}