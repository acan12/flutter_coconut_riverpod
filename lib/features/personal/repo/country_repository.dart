import 'package:flutter_coconut_riverpod/shared/api_config.dart';

import '../data/remote/response/country/country_response.dart';
import '../data/remote/service/api_service.dart';

class CountryRepository with CountryInterface {
  @override
  Future<CountryResponse> getListOfCountries() {
    final client = ApiService(ApiConfig.getDioMock());
    return client.getListOfCountries();
  }
}

mixin CountryInterface {
  Future<CountryResponse> getListOfCountries();
}
