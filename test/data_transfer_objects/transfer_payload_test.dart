import 'package:test/test.dart';
import 'package:tos_dart_sdk/src/data_transfer_objects/dtos.dart';

void main() {
  group('TransferPayload', () {
    test('should create from valid JSON with required fields', () {
      final json = {
        'asset':
            '0000000000000000000000000000000000000000000000000000000000000000',
        'destination': 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        'amount': 1000000,
      };

      final transfer = TransferPayload.fromJson(json);

      expect(
        transfer.asset,
        equals(
          '0000000000000000000000000000000000000000000000000000000000000000',
        ),
      );
      expect(
        transfer.destination,
        equals('tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
      );
      expect(transfer.amount, equals(1000000));
      expect(transfer.extraData, isNull);
    });

    test('should create from JSON with extra_data', () {
      final json = {
        'asset':
            '0000000000000000000000000000000000000000000000000000000000000000',
        'destination': 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        'amount': 1000000,
        'extra_data': {'memo': 'Payment for services'},
      };

      final transfer = TransferPayload.fromJson(json);

      expect(transfer.extraData, isNotNull);
      expect(transfer.extraData['memo'], equals('Payment for services'));
    });

    test('should serialize to JSON correctly', () {
      const transfer = TransferPayload(
        asset:
            '0000000000000000000000000000000000000000000000000000000000000000',
        destination: 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        amount: 1000000,
      );

      final json = transfer.toJson();

      expect(
        json['asset'],
        equals(
          '0000000000000000000000000000000000000000000000000000000000000000',
        ),
      );
      expect(
        json['destination'],
        equals('tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
      );
      expect(json['amount'], equals(1000000));
    });

    test('should handle zero amount', () {
      final json = {
        'asset':
            '0000000000000000000000000000000000000000000000000000000000000000',
        'destination': 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        'amount': 0,
      };

      final transfer = TransferPayload.fromJson(json);

      expect(transfer.amount, equals(0));
    });

    test('should handle large amounts', () {
      final json = {
        'asset':
            '0000000000000000000000000000000000000000000000000000000000000000',
        'destination': 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        'amount': 9223372036854775807, // max int64
      };

      final transfer = TransferPayload.fromJson(json);

      expect(transfer.amount, equals(9223372036854775807));
    });

    test('should handle different asset hashes', () {
      final customAsset =
          'abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890';
      final json = {
        'asset': customAsset,
        'destination': 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        'amount': 5000000,
      };

      final transfer = TransferPayload.fromJson(json);

      expect(transfer.asset, equals(customAsset));
    });

    test('should support equality comparison', () {
      const transfer1 = TransferPayload(
        asset:
            '0000000000000000000000000000000000000000000000000000000000000000',
        destination: 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        amount: 1000000,
      );

      const transfer2 = TransferPayload(
        asset:
            '0000000000000000000000000000000000000000000000000000000000000000',
        destination: 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        amount: 1000000,
      );

      const transfer3 = TransferPayload(
        asset:
            '0000000000000000000000000000000000000000000000000000000000000000',
        destination: 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        amount: 2000000,
      );

      expect(transfer1, equals(transfer2));
      expect(transfer1, isNot(equals(transfer3)));
    });

    test('should handle destination as string', () {
      final json = {
        'asset':
            '0000000000000000000000000000000000000000000000000000000000000000',
        'destination': 'tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        'amount': 1000000,
      };

      final transfer = TransferPayload.fromJson(json);

      expect(transfer.destination, isA<String>());
      expect(
        transfer.destination,
        equals('tos1qxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
      );
    });
  });
}
