import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/country/country_response.dart';
import 'package:flutter_coconut_riverpod/features/personal/vm/country_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getCountryProvider = FutureProvider.autoDispose<CountryResponse>(
  (ref) => CountryViewModel().getListOfCountries(),
);
