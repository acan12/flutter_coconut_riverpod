import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/country/country_response.dart';
import 'package:flutter_coconut_riverpod/features/personal/repo/country_repository.dart';
import 'package:flutter_coconut_riverpod/features/personal/vm/base_viewmodel.dart';

class CountryViewModel extends BaseViewModel with CountryInterface {
  final CountryRepository repo = CountryRepository();

  @override
  Future<CountryResponse> getListOfCountries() {
    return repo.getListOfCountries();
  }
}
