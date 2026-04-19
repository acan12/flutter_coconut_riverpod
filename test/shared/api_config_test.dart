import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_coconut_riverpod/shared/api_config.dart';

void main() {
  group('ApiConfig', () {
    test('domainHost is not empty', () {
      expect(ApiConfig.domainHost, isNotEmpty);
    });

    test('domainHost is a valid HTTPS URL', () {
      expect(ApiConfig.domainHost, startsWith('https://'));
    });

    test('domainHost has correct value', () {
      expect(
        ApiConfig.domainHost,
        'https://private-f66ab-myportfolio6.apiary-mock.com/',
      );
    });

    test('personal endpoint is not empty', () {
      expect(ApiConfig.personal, isNotEmpty);
    });

    test('personal endpoint has correct value', () {
      expect(ApiConfig.personal, 'personal');
    });
  });
}