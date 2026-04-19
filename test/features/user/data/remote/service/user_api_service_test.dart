import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_coconut_riverpod/features/user/data/remote/service/user_api_service.dart';
import 'package:flutter_coconut_riverpod/shared/api_config.dart';

class MockHttpClientAdapter implements HttpClientAdapter {
  final String responseBody;
  final int statusCode;

  MockHttpClientAdapter({
    required this.responseBody,
    this.statusCode = 200,
  });

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<List<int>>? requestStream,
    Future<dynamic>? cancelFuture,
  ) async {
    return ResponseBody.fromString(
      responseBody,
      statusCode,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

const _userJson = '''
{
  "id": 1,
  "full_name": "John Doe",
  "email": "john@example.com",
  "first_name": "John",
  "last_name": "Doe",
  "avatar": "https://example.com/avatar.jpg"
}
''';

void main() {
  group('UserApiService', () {
    late Dio dio;

    setUp(() {
      dio = Dio(BaseOptions(baseUrl: ApiConfig.domainHost));
      dio.httpClientAdapter = MockHttpClientAdapter(responseBody: _userJson);
    });

    test('can be instantiated with Dio', () {
      final service = UserApiService(dio);
      expect(service, isNotNull);
    });

    test('can be instantiated with custom baseUrl', () {
      final service = UserApiService(
        dio,
        baseUrl: 'https://custom.api.com/',
      );
      expect(service, isNotNull);
    });

    test('getPersonal returns UserResponse', () async {
      final service = UserApiService(dio);
      final result = await service.getPersonal();
      expect(result.id, 1);
      expect(result.full_name, 'John Doe');
      expect(result.email, 'john@example.com');
    });

    test('getPersonal maps first_name correctly', () async {
      final service = UserApiService(dio);
      final result = await service.getPersonal();
      expect(result.first_name, 'John');
      expect(result.last_name, 'Doe');
    });

    test('getPersonal maps avatar correctly', () async {
      final service = UserApiService(dio);
      final result = await service.getPersonal();
      expect(result.avatar, 'https://example.com/avatar.jpg');
    });

    test('getPersonal uses custom baseUrl when provided', () async {
      final service = UserApiService(
        dio,
        baseUrl: 'https://custom.api.com/',
      );
      final result = await service.getPersonal();
      expect(result, isNotNull);
    });
  });

  group('ApiConfig constants used by UserApiService', () {
    test('domainHost is not empty', () {
      expect(ApiConfig.domainHost, isNotEmpty);
    });

    test('personal path is used for getPersonal endpoint', () {
      expect(ApiConfig.personal, 'personal');
    });
  });
}