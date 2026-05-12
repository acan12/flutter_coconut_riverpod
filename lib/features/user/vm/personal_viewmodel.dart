import 'package:flutter_coconut_riverpod/features/user/data/remote/response/personal_response.dart';
import 'package:flutter_coconut_riverpod/features/user/repo/personal_interface.dart';
import 'package:flutter_coconut_riverpod/features/user/repo/personal_repository.dart';
import 'package:flutter_coconut_riverpod/features/user/vm/base_viewmodel.dart';

class PersonalViewModel extends BaseViewModel with PersonalInterface{
  final PersonalRepository repo = PersonalRepository();

  @override
  Future<PersonalResponse> getPersonal() {
    return repo.getPersonal();
  }
}