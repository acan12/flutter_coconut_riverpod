import 'package:dio/dio.dart';
import 'package:chucker_flutter/chucker_flutter.dart' show ChuckerDioInterceptor;

abstract class ApiConfig {
  static const domainHost =
      "https://private-f66ab-myportfolio6.apiary-mock.com/";

  static const domainMockHost =
      "https://mock.apidog.com/m1/1286704-1285397-default/";

  static const personal = "personal";
  static const listOfCountries = "countries";

  static Dio getDio() {
    var dio = Dio(
        BaseOptions(baseUrl: domainHost, contentType: "application/json"));
    dio.interceptors.add(ChuckerDioInterceptor());
    return dio;
  }
}