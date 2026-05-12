import 'package:freezed_annotation/freezed_annotation.dart';

part "personal_response.freezed.dart";
part "personal_response.g.dart";

@freezed
abstract class PersonalResponse with _$PersonalResponse {
  const factory PersonalResponse({
    required int id,
    @JsonKey(name: 'full_name')
    required String fullName,
    required String email,
    @JsonKey(name: 'first_name')
    required String firstName,
    @JsonKey(name: 'last_name')
    required String lastName,
    required String avatar,
  }) = _PersonalResponse;

  factory PersonalResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonalResponseFromJson(json);
}
