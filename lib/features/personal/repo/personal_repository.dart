import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/personal/personal_response.dart';
import 'package:flutter_coconut_riverpod/features/personal/data/remote/service/api_service.dart';

import '../../../shared/api_config.dart';

class PersonalRepository with PersonalInterface {
  @override
  Future<PersonalResponse> getPersonal() async {
    final client = ApiService(ApiConfig.getDio());
    return client.getPersonal();
  }
}

mixin PersonalInterface {
  Future<PersonalResponse> getPersonal();
}
