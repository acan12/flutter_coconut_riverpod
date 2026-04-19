import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_coconut_riverpod/flavors.dart';

void main() {
  setUpAll(() {
    try {
      F.appFlavor = Flavor.staging;
    } catch (_) {}
  });

  group('Flavor enum', () {
    test('has exactly two values', () {
      expect(Flavor.values.length, 2);
    });

    test('contains staging', () {
      expect(Flavor.values, contains(Flavor.staging));
    });

    test('contains prod', () {
      expect(Flavor.values, contains(Flavor.prod));
    });

    test('staging name is staging', () {
      expect(Flavor.staging.name, 'staging');
    });

    test('prod name is prod', () {
      expect(Flavor.prod.name, 'prod');
    });
  });

  group('F class with staging flavor', () {
    test('name returns staging', () {
      expect(F.name, 'staging');
    });

    test('title returns Demo Staging', () {
      expect(F.title, 'Demo Staging');
    });

    test('appFlavor is Flavor.staging', () {
      expect(F.appFlavor, Flavor.staging);
    });
  });
}