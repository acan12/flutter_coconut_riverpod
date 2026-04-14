import 'package:flutter_coconut_riverpod/features/user/data/remote/response/user_response.dart';
import 'package:flutter_coconut_riverpod/shared/api_config.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: ApiConfig.domainHost)
abstract class UserApiService {
  factory UserApiService(Dio dio, { String baseUrl }) = _UserApiService;

  @GET(ApiConfig.personal)
  Future<UserResponse> getPersonal();
}