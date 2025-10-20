import 'package:test/test.dart';
import 'package:tos_dart_sdk/src/data_transfer_objects/dtos.dart';

void main() {
  group('GetBalanceResult', () {
    test('should create from valid JSON', () {
      final json = {
        'balance': 1000000,
        'topoheight': 12345,
      };

      final result = GetBalanceResult.fromJson(json);

      expect(result.balance, equals(1000000));
      expect(result.topoheight, equals(12345));
    });

    test('should serialize to JSON correctly', () {
      const result = GetBalanceResult(
        balance: 1000000,
        topoheight: 12345,
      );

      final json = result.toJson();

      expect(json['balance'], equals(1000000));
      expect(json['topoheight'], equals(12345));
    });

    test('should handle zero balance', () {
      final json = {
        'balance': 0,
        'topoheight': 0,
      };

      final result = GetBalanceResult.fromJson(json);

      expect(result.balance, equals(0));
      expect(result.topoheight, equals(0));
    });

    test('should handle large balance values', () {
      final json = {
        'balance': 9223372036854775807, // max int64
        'topoheight': 999999999,
      };

      final result = GetBalanceResult.fromJson(json);

      expect(result.balance, equals(9223372036854775807));
      expect(result.topoheight, equals(999999999));
    });

    test('should create instances with factory constructor', () {
      const result = GetBalanceResult(
        balance: 5000000,
        topoheight: 54321,
      );

      expect(result.balance, equals(5000000));
      expect(result.topoheight, equals(54321));
    });

    test('should support equality comparison', () {
      const result1 = GetBalanceResult(
        balance: 1000000,
        topoheight: 12345,
      );
      const result2 = GetBalanceResult(
        balance: 1000000,
        topoheight: 12345,
      );
      const result3 = GetBalanceResult(
        balance: 2000000,
        topoheight: 12345,
      );

      expect(result1, equals(result2));
      expect(result1, isNot(equals(result3)));
    });
  });
}
