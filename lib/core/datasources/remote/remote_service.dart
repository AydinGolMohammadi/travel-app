
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:travel_app/core/constants/constants.dart';
import 'package:travel_app/features/auth/login/data/dto/login_dto.dart';
import 'package:travel_app/features/auth/login/domain/params/login_param.dart';



part 'remote_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class RemoteService {
  factory RemoteService(Dio dio, {String baseUrl}) = _RemoteService;

  @POST('admins/auth-with-password')
  Future<HttpResponse<LoginDto>> loginUser({
    @Body() required LoginParam loginParam,
  });
}
