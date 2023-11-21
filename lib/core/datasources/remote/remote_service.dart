
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';



part 'remote_service.g.dart';

@RestApi(baseUrl: "")
abstract class RemoteService {
  factory RemoteService(Dio dio, {String baseUrl}) = _RemoteService;

  //
  // @GET('patients/me/health-data/blood-sugar/v1/')
  // Future<HttpResponse<BloodSugarDto>> getsSugarBlood({
  //   @Query('limit') required String limit,
  //   @Query('page') required int page,
  // });

  // @GET("/954c235f-10a0-4a7d-8a40-5e4a6bcc2882")
  // Future<HttpResponse<List<SplashEntity>>> splashData();
  // @GET("/2de06518-fa1c-4ac8-aec7-29eb201b5884")
  // Future<HttpResponse<HomeEntity>> homeData();
}
