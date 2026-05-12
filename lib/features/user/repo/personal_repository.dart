import 'package:dio/dio.dart';
import 'package:flutter_coconut_riverpod/features/user/data/remote/response/personal_response.dart';
import 'package:flutter_coconut_riverpod/features/user/data/remote/service/api_service.dart';
import 'package:flutter_coconut_riverpod/features/user/repo/personal_interface.dart';

class PersonalRepository with PersonalInterface {
  @override
  Future<PersonalResponse> getPersonal() async {
    final client = ApiService(Dio(BaseOptions(contentType: "application/json")));
    return client.getPersonal();
  }
}