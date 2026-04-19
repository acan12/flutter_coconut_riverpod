  import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_coconut_riverpod/features/user/data/remote/response/user_response.dart';

void main() {
  const testUser = UserResponse(
    id: 1,
    full_name: 'John Doe',
    email: 'john@example.com',
    first_name: 'John',
    last_name: 'Doe',
    avatar: 'https://example.com/avatar.jpg',
  );

  group('UserResponse construction', () {
    test('creates instance with correct id', () {
      expect(testUser.id, 1);
    });

    test('creates instance with correct full_name', () {
      expect(testUser.full_name, 'John Doe');
    });

    test('creates instance with correct email', () {
      expect(testUser.email, 'john@example.com');
    });

    test('creates instance with correct first_name', () {
      expect(testUser.first_name, 'John');
    });

    test('creates instance with correct last_name', () {
      expect(testUser.last_name, 'Doe');
    });

    test('creates instance with correct avatar', () {
      expect(testUser.avatar, 'https://example.com/avatar.jpg');
    });
  });

  group('UserResponse equality', () {
    test('same values are equal', () {
      const user2 = UserResponse(
        id: 1,
        full_name: 'John Doe',
        email: 'john@example.com',
        first_name: 'John',
        last_name: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser, equals(user2));
    });

    test('different id is not equal', () {
      const user2 = UserResponse(
        id: 2,
        full_name: 'John Doe',
        email: 'john@example.com',
        first_name: 'John',
        last_name: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser, isNot(equals(user2)));
    });

    test('different email is not equal', () {
      const user2 = UserResponse(
        id: 1,
        full_name: 'John Doe',
        email: 'other@example.com',
        first_name: 'John',
        last_name: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser, isNot(equals(user2)));
    });
  });

  group('UserResponse hashCode', () {
    test('equal objects have same hashCode', () {
      const user2 = UserResponse(
        id: 1,
        full_name: 'John Doe',
        email: 'john@example.com',
        first_name: 'John',
        last_name: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser.hashCode, equals(user2.hashCode));
    });
  });

  group('UserResponse toString', () {
    test('toString contains id', () {
      expect(testUser.toString(), contains('1'));
    });

    test('toString contains full_name', () {
      expect(testUser.toString(), contains('John Doe'));
    });

    test('toString contains email', () {
      expect(testUser.toString(), contains('john@example.com'));
    });
  });

  group('UserResponse fromJson', () {
    test('creates correct instance from JSON', () {
      final json = {
        'id': 1,
        'full_name': 'John Doe',
        'email': 'john@example.com',
        'first_name': 'John',
        'last_name': 'Doe',
        'avatar': 'https://example.com/avatar.jpg',
      };
      expect(UserResponse.fromJson(json), equals(testUser));
    });

    test('parses id correctly', () {
      final json = {
        'id': 42,
        'full_name': 'Test',
        'email': 'test@test.com',
        'first_name': 'Test',
        'last_name': 'User',
        'avatar': '',
      };
      expect(UserResponse.fromJson(json).id, 42);
    });

    test('parses empty strings', () {
      final json = {
        'id': 0,
        'full_name': '',
        'email': '',
        'first_name': '',
        'last_name': '',
        'avatar': '',
      };
      final user = UserResponse.fromJson(json);
      expect(user.full_name, '');
      expect(user.email, '');
    });
  });

  group('UserResponse toJson', () {
    test('toJson returns correct id', () {
      expect(testUser.toJson()['id'], 1);
    });

    test('toJson returns correct full_name', () {
      expect(testUser.toJson()['full_name'], 'John Doe');
    });

    test('toJson returns correct email', () {
      expect(testUser.toJson()['email'], 'john@example.com');
    });

    test('toJson returns all required keys', () {
      final json = testUser.toJson();
      expect(json.containsKey('id'), isTrue);
      expect(json.containsKey('full_name'), isTrue);
      expect(json.containsKey('email'), isTrue);
      expect(json.containsKey('first_name'), isTrue);
      expect(json.containsKey('last_name'), isTrue);
      expect(json.containsKey('avatar'), isTrue);
    });

    test('fromJson and toJson are inverse operations', () {
      final json = testUser.toJson();
      expect(UserResponse.fromJson(json), equals(testUser));
    });
  });

  group('UserResponse copyWith', () {
    test('copyWith changes specified fields', () {
      final updated = testUser.copyWith(full_name: 'Jane Doe', id: 2);
      expect(updated.id, 2);
      expect(updated.full_name, 'Jane Doe');
    });

    test('copyWith preserves unspecified fields', () {
      final updated = testUser.copyWith(id: 99);
      expect(updated.email, testUser.email);
      expect(updated.first_name, testUser.first_name);
      expect(updated.last_name, testUser.last_name);
      expect(updated.avatar, testUser.avatar);
    });

    test('copyWith returns new instance', () {
      final updated = testUser.copyWith(id: 99);
      expect(identical(testUser, updated), isFalse);
    });
  });
}