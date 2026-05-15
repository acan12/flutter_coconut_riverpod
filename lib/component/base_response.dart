abstract class BaseResponse {
  const BaseResponse();

  Error? get error;
}

class Error {
  final int code;
  final String message;

  const Error({required this.code, required this.message});

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        code: json['code'] as int,
        message: json['message'] as String,
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
      };
}