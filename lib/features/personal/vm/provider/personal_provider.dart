import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/personal_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../personal_viewmodel.dart';

final getPersonalProvider = FutureProvider.autoDispose<PersonalResponse>(
  (ref) => PersonalViewModel().getPersonal(),
);
