import 'package:flutter_coconut_riverpod/features/user/data/remote/response/personal_response.dart';

mixin PersonalInterface {
  Future<PersonalResponse> getPersonal();
}