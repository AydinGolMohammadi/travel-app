import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:travel_app/core/datasources/remote/remote_service.dart';
import 'package:travel_app/core/resources/data_state.dart';
import 'package:travel_app/core/utils/exception_parser.dart';
import 'package:travel_app/features/auth/login/domain/entity/login_entity.dart';
import 'package:travel_app/features/auth/login/domain/params/login_param.dart';
import 'package:travel_app/features/auth/login/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final RemoteService _remoteService;

  const LoginRepositoryImpl(this._remoteService);

  @override
  Future<DataState<LoginEntity>> loginUser({required LoginParam loginParam}) async{
    try {
      final httpResponse = await _remoteService.loginUser(loginParam: loginParam);

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