  import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/personal/personal_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testUser = PersonalResponse(
    id: 1,
    fullName: 'John Doe',
    email: 'john@example.com',
    firstName: 'John',
    lastName: 'Doe',
    avatar: 'https://example.com/avatar.jpg',
  );

  group('UserResponse construction', () {
    test('creates instance with correct id', () {
      expect(testUser.id, 1);
    });

    test('creates instance with correct fullName', () {
      expect(testUser.fullName, 'John Doe');
    });

    test('creates instance with correct email', () {
      expect(testUser.email, 'john@example.com');
    });

    test('creates instance with correct fullName', () {
      expect(testUser.fullName, 'John');
    });

    test('creates instance with correct lastName', () {
      expect(testUser.lastName, 'Doe');
    });

    test('creates instance with correct avatar', () {
      expect(testUser.avatar, 'https://example.com/avatar.jpg');
    });
  });

  group('UserResponse equality', () {
    test('same values are equal', () {
      const user2 = PersonalResponse(
        id: 1,
        fullName: 'John Doe',
        email: 'john@example.com',
        firstName: 'John',
        lastName: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser, equals(user2));
    });

    test('different id is not equal', () {
      const user2 = PersonalResponse(
        id: 2,
        fullName: 'John Doe',
        email: 'john@example.com',
        firstName: 'John',
        lastName: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser, isNot(equals(user2)));
    });

    test('different email is not equal', () {
      const user2 = PersonalResponse(
        id: 1,
        fullName: 'John Doe',
        email: 'other@example.com',
        firstName: 'John',
        lastName: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser, isNot(equals(user2)));
    });
  });

  group('UserResponse hashCode', () {
    test('equal objects have same hashCode', () {
      const user2 = PersonalResponse(
        id: 1,
        fullName: 'John Doe',
        email: 'john@example.com',
        firstName: 'John',
        lastName: 'Doe',
        avatar: 'https://example.com/avatar.jpg',
      );
      expect(testUser.hashCode, equals(user2.hashCode));
    });
  });

  group('UserResponse toString', () {
    test('toString contains id', () {
      expect(testUser.toString(), contains('1'));
    });

    test('toString contains fullName', () {
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
        'fullName': 'John Doe',
        'email': 'john@example.com',
        'fullName': 'John',
        'lastName': 'Doe',
        'avatar': 'https://example.com/avatar.jpg',
      };
      expect(PersonalResponse.fromJson(json), equals(testUser));
    });

    test('parses id correctly', () {
      final json = {
        'id': 42,
        'fullName': 'Test',
        'email': 'test@test.com',
        'fullName': 'Test',
        'lastName': 'User',
        'avatar': '',
      };
      expect(PersonalResponse.fromJson(json).id, 42);
    });

    test('parses empty strings', () {
      final json = {
        'id': 0,
        'fullName': '',
        'email': '',
        'fullName': '',
        'lastName': '',
        'avatar': '',
      };
      final user = PersonalResponse.fromJson(json);
      expect(user.fullName, '');
      expect(user.email, '');
    });
  });

  group('UserResponse toJson', () {
    test('toJson returns correct id', () {
      expect(testUser.toJson()['id'], 1);
    });

    test('toJson returns correct fullName', () {
      expect(testUser.toJson()['fullName'], 'John Doe');
    });

    test('toJson returns correct email', () {
      expect(testUser.toJson()['email'], 'john@example.com');
    });

    test('toJson returns all required keys', () {
      final json = testUser.toJson();
      expect(json.containsKey('id'), isTrue);
      expect(json.containsKey('fullName'), isTrue);
      expect(json.containsKey('email'), isTrue);
      expect(json.containsKey('fullName'), isTrue);
      expect(json.containsKey('lastName'), isTrue);
      expect(json.containsKey('avatar'), isTrue);
    });

    test('fromJson and toJson are inverse operations', () {
      final json = testUser.toJson();
      expect(PersonalResponse.fromJson(json), equals(testUser));
    });
  });

  group('UserResponse copyWith', () {
    test('copyWith changes specified fields', () {
      final updated = testUser.copyWith(fullName: 'Jane Doe', id: 2);
      expect(updated.id, 2);
      expect(updated.fullName, 'Jane Doe');
    });

    test('copyWith preserves unspecified fields', () {
      final updated = testUser.copyWith(id: 99);
      expect(updated.email, testUser.email);
      expect(updated.fullName, testUser.fullName);
      expect(updated.lastName, testUser.lastName);
      expect(updated.avatar, testUser.avatar);
    });

    test('copyWith returns new instance', () {
      final updated = testUser.copyWith(id: 99);
      expect(identical(testUser, updated), isFalse);
    });
  });
}