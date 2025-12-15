@Tags(['integration'])
library;

import 'package:test/test.dart';
import 'package:tos_dart_sdk/tos_dart_sdk.dart';

/// Basic integration tests that verify connectivity to testnet
/// and test core RPC methods that are known to work.
void main() {
  group('Basic Integration Tests - Testnet', () {
    late DaemonClient client;

    setUp(() {
      // Connect to testnet
      client = DaemonClient(
        endPoint: testnetNodeURL,
        secureWebSocket: true,
      );
    });

    tearDown(() {
      client.disconnect();
    });

    test(
      'should connect to testnet successfully',
      () async {
        // Connect to testnet
        client.connect();

        // Wait for connection to establish
        await Future<void>.delayed(const Duration(seconds: 2));

        // Verify connection by making a simple RPC call
        // If connection is successful, getVersion should return a non-empty string
        final version = await client.getVersion();

        expect(version, isNotNull);
        expect(version, isNotEmpty);
        // ignore: avoid_print
        print('Connected to testnet, version: $version');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test(
      'should get version from testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final version = await client.getVersion();

        expect(version, isNotNull);
        expect(version, isA<String>());
        expect(version, isNotEmpty);
        // ignore: avoid_print
        print('Testnet version: $version');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test('should get info from testnet', () async {
      client.connect();
      await Future<void>.delayed(const Duration(seconds: 1));

      final info = await client.getInfo();

      expect(info, isNotNull);
      expect(info.network, equals(Network.testnet));
      expect(info.height, greaterThan(0));
      expect(info.topoHeight, greaterThan(0));
      // stableHeight may be null
      if (info.stableHeight != null) {
        expect(info.stableHeight, greaterThan(0));
      }
      expect(info.version, isNotEmpty);
      expect(info.topBlockHash, isNotEmpty);

      // ignore: avoid_print
      print('Network: ${info.network}');
      // ignore: avoid_print
      print('Height: ${info.height}');
      // ignore: avoid_print
      print('Topo Height: ${info.topoHeight}');
      // ignore: avoid_print
      print('Stable Height: ${info.stableHeight}');
    }, timeout: const Timeout(Duration(seconds: 10)));

    test(
      'should get height from testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final height = await client.getHeight();

        expect(height, isNotNull);
        expect(height, greaterThan(0));
        // ignore: avoid_print
        print('Height: $height');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test(
      'should get topoHeight from testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final topoHeight = await client.getTopoHeight();

        expect(topoHeight, isNotNull);
        expect(topoHeight, greaterThan(0));
        // ignore: avoid_print
        print('TopoHeight: $topoHeight');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test(
      'should get stable height from testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final stableHeight = await client.getStableHeight();

        expect(stableHeight, isNotNull);
        expect(stableHeight, greaterThan(0));
        // ignore: avoid_print
        print('Stable Height: $stableHeight');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test(
      'should get stable topoHeight from testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final stableTopoHeight = await client.getStableTopoHeight();

        expect(stableTopoHeight, isNotNull);
        expect(stableTopoHeight, greaterThan(0));
        // ignore: avoid_print
        print('Stable TopoHeight: $stableTopoHeight');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test(
      'should get top block from testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final topBlock = await client.getTopBlock();

        expect(topBlock, isNotNull);
        expect(topBlock.hash, isNotEmpty);
        expect(topBlock.height, greaterThan(0));
        expect(topBlock.blockType, isNotEmpty);
        expect(topBlock.timestamp, greaterThan(0));

        // ignore: avoid_print
        print('Top Block Hash: ${topBlock.hash}');
        // ignore: avoid_print
        print('Height: ${topBlock.height}');
        // ignore: avoid_print
        print('Block Type: ${topBlock.blockType}');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test('should get tips from testnet', () async {
      client.connect();
      await Future<void>.delayed(const Duration(seconds: 1));

      final tips = await client.getTips();

      expect(tips, isNotNull);
      expect(tips, isNotEmpty);

      for (final tip in tips) {
        expect(tip, isNotEmpty);
      }

      // ignore: avoid_print
      print('Found ${tips.length} tips');
    }, timeout: const Timeout(Duration(seconds: 10)));

    test(
      'should count assets on testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final count = await client.countAssets();

        expect(count, greaterThanOrEqualTo(1)); // At least TOS asset
        // ignore: avoid_print
        print('Total assets: $count');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test(
      'should count accounts on testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final count = await client.countAccounts();

        expect(count, greaterThanOrEqualTo(0));
        // ignore: avoid_print
        print('Total accounts: $count');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );

    test(
      'should count transactions on testnet',
      () async {
        client.connect();
        await Future<void>.delayed(const Duration(seconds: 1));

        final count = await client.countTransactions();

        expect(count, greaterThanOrEqualTo(0));
        // ignore: avoid_print
        print('Total transactions: $count');
      },
      timeout: const Timeout(Duration(seconds: 10)),
    );
  });
}
