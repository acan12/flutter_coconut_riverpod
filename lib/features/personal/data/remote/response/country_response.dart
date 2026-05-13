import 'package:flutter_coconut_riverpod/component/base_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../mapper/country.dart';

part "country_response.freezed.dart";
part "country_response.g.dart";

@freezed
abstract class CountryResponse extends BaseResponse with _$CountryResponse {
  const CountryResponse._();
  const factory CountryResponse({
    required Data data,
    Error? error,
  }) = _CountryResponse;

  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      _$CountryResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required List<Country> countries,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}