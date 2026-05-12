import 'package:dio/dio.dart';
import 'package:chucker_flutter/chucker_flutter.dart' show ChuckerDioInterceptor;

abstract class ApiConfig {
  static const domainHost =
      "https://private-f66ab-myportfolio6.apiary-mock.com/";

  static const personal = "personal";

  static Dio getDio() {
    var dio = Dio(
        BaseOptions(baseUrl: domainHost, contentType: "application/json"));
    dio.interceptors.add(ChuckerDioInterceptor());
    return dio;
  }
}