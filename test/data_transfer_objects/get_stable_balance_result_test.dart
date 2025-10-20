import 'package:test/test.dart';
import 'package:tos_dart_sdk/src/data_transfer_objects/dtos.dart';

void main() {
  group('GetStableBalanceResult', () {
    test('should create from valid JSON', () {
      final json = {
        'balance': 5000000,
        'stable_topoheight': 12340,
        'stable_block_hash': 'stable_block_hash_abc123',
      };

      final result = GetStableBalanceResult.fromJson(json);

      expect(result.balance, equals(5000000));
      expect(result.stableTopoheight, equals(12340));
      expect(result.stableBlockHash, equals('stable_block_hash_abc123'));
    });

    test('should serialize to JSON correctly', () {
      const result = GetStableBalanceResult(
        balance: 5000000,
        stableTopoheight: 12340,
        stableBlockHash: 'stable_block_hash_abc123',
      );

      final json = result.toJson();

      expect(json['balance'], equals(5000000));
      expect(json['stable_topoheight'], equals(12340));
      expect(json['stable_block_hash'], equals('stable_block_hash_abc123'));
    });

    test('should handle zero balance', () {
      final json = {
        'balance': 0,
        'stable_topoheight': 0,
        'stable_block_hash': 'genesis_block_hash',
      };

      final result = GetStableBalanceResult.fromJson(json);

      expect(result.balance, equals(0));
      expect(result.stableTopoheight, equals(0));
      expect(result.stableBlockHash, equals('genesis_block_hash'));
    });

    test('should handle large balance values', () {
      final json = {
        'balance': 9223372036854775807, // max int64
        'stable_topoheight': 999999999,
        'stable_block_hash': 'stable_block_hash_large',
      };

      final result = GetStableBalanceResult.fromJson(json);

      expect(result.balance, equals(9223372036854775807));
      expect(result.stableTopoheight, equals(999999999));
    });

    test('should create instances with factory constructor', () {
      const result = GetStableBalanceResult(
        balance: 3000000,
        stableTopoheight: 10000,
        stableBlockHash: 'block_hash_xyz',
      );

      expect(result.balance, equals(3000000));
      expect(result.stableTopoheight, equals(10000));
      expect(result.stableBlockHash, equals('block_hash_xyz'));
    });

    test('should support equality comparison', () {
      const result1 = GetStableBalanceResult(
        balance: 5000000,
        stableTopoheight: 12340,
        stableBlockHash: 'stable_block_hash_abc123',
      );

      const result2 = GetStableBalanceResult(
        balance: 5000000,
        stableTopoheight: 12340,
        stableBlockHash: 'stable_block_hash_abc123',
      );

      const result3 = GetStableBalanceResult(
        balance: 6000000,
        stableTopoheight: 12340,
        stableBlockHash: 'stable_block_hash_abc123',
      );

      expect(result1, equals(result2));
      expect(result1, isNot(equals(result3)));
    });

    test('should handle different block hash formats', () {
      for (final hash in [
        'abc123',
        'ABCDEF1234567890',
        '0x1234567890abcdef',
        'very_long_hash_string_with_various_characters_123456789',
      ]) {
        final json = {
          'balance': 1000000,
          'stable_topoheight': 5000,
          'stable_block_hash': hash,
        };

        final result = GetStableBalanceResult.fromJson(json);
        expect(result.stableBlockHash, equals(hash));
      }
    });

    test('should verify stable topoheight is consistent', () {
      final json = {
        'balance': 5000000,
        'stable_topoheight': 12340,
        'stable_block_hash': 'stable_block_hash_abc123',
      };

      final result = GetStableBalanceResult.fromJson(json);

      // Stable topoheight should be a non-negative integer
      expect(result.stableTopoheight, greaterThanOrEqualTo(0));
      expect(result.stableTopoheight, isA<int>());
    });
  });
}
