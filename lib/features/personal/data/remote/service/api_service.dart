import 'package:dio/dio.dart';
import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/country_response.dart';
import 'package:flutter_coconut_riverpod/shared/api_config.dart';
import 'package:retrofit/retrofit.dart';

import '../response/personal_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConfig.domainHost)
abstract class ApiService {
  factory ApiService(Dio dio, { String baseUrl }) = _ApiService;

  @GET(ApiConfig.personal)
  Future<PersonalResponse> getPersonal();

  @GET(ApiConfig.listOfCountries)
  Future<List<CountryResponse>> getListOfCountries();
}