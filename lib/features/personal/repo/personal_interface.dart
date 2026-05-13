import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/personal_response.dart';

mixin PersonalInterface {
  Future<PersonalResponse> getPersonal();
}