import 'package:test/test.dart';
import 'package:tos_dart_sdk/src/data_transfer_objects/dtos.dart';

void main() {
  group('GetInfoResult', () {
    test('should create from valid JSON', () {
      final json = {
        'height': 100000,
        'topoheight': 99950,
        'stable_height': 99900,
        'top_block_hash': 'top_block_hash_abc123',
        'circulating_supply': 50000000000000,
        'maximum_supply': 100000000000000,
        'burned_supply': 1000000000,
        'emitted_supply': 51000000000000,
        'difficulty': '1234567890',
        'block_time_target': 15000,
        'average_block_time': 14950,
        'block_reward': 1000000,
        'mempool_size': 25,
        'version': '0.29.3',
        'network': 'Mainnet',
        'miner_reward': 900000,
        'dev_reward': 100000,
      };

      final result = GetInfoResult.fromJson(json);

      expect(result.height, equals(100000));
      expect(result.topoHeight, equals(99950));
      expect(result.stableHeight, equals(99900));
      expect(result.topBlockHash, equals('top_block_hash_abc123'));
      expect(result.circulatingSupply, equals(50000000000000));
      expect(result.maximumSupply, equals(100000000000000));
      expect(result.burnedSupply, equals(1000000000));
      expect(result.emittedSupply, equals(51000000000000));
      expect(result.difficulty, equals('1234567890'));
      expect(result.blockTimeTarget, equals(15000));
      expect(result.averageBlockTime, equals(14950));
      expect(result.blockReward, equals(1000000));
      expect(result.mempoolSize, equals(25));
      expect(result.version, equals('0.29.3'));
      expect(result.network, equals(Network.mainnet));
      expect(result.minerReward, equals(900000));
      expect(result.devReward, equals(100000));
    });

    test('should create with optional pruned_topoheight', () {
      final json = {
        'height': 100000,
        'topoheight': 99950,
        'stable_height': 99900,
        'pruned_topoheight': 50000,
        'top_block_hash': 'top_block_hash_abc123',
        'circulating_supply': 50000000000000,
        'maximum_supply': 100000000000000,
        'burned_supply': 1000000000,
        'emitted_supply': 51000000000000,
        'difficulty': '1234567890',
        'block_time_target': 15000,
        'average_block_time': 14950,
        'block_reward': 1000000,
        'mempool_size': 25,
        'version': '0.29.3',
        'network': 'Mainnet',
        'miner_reward': 900000,
        'dev_reward': 100000,
      };

      final result = GetInfoResult.fromJson(json);

      expect(result.prunedTopoHeight, equals(50000));
    });

    test('should serialize to JSON correctly', () {
      final result = GetInfoResult(
        height: 100000,
        topoHeight: 99950,
        stableHeight: 99900,
        topBlockHash: 'top_block_hash_abc123',
        circulatingSupply: 50000000000000,
        maximumSupply: 100000000000000,
        burnedSupply: 1000000000,
        emittedSupply: 51000000000000,
        difficulty: '1234567890',
        blockTimeTarget: 15000,
        averageBlockTime: 14950,
        blockReward: 1000000,
        mempoolSize: 25,
        version: '0.29.3',
        network: Network.mainnet,
        minerReward: 900000,
        devReward: 100000,
      );

      final json = result.toJson();

      expect(json['height'], equals(100000));
      expect(json['topoheight'], equals(99950));
      expect(json['stable_height'], equals(99900));
      expect(json['network'], equals('Mainnet'));
    });

    test('should handle different network types', () {
      final testCases = {
        'Mainnet': Network.mainnet,
        'Testnet': Network.testnet,
        'Dev': Network.devnet,
      };

      for (final entry in testCases.entries) {
        final json = {
          'height': 100000,
          'topoheight': 99950,
          'stable_height': 99900,
          'top_block_hash': 'top_block_hash_abc123',
          'circulating_supply': 50000000000000,
          'maximum_supply': 100000000000000,
          'burned_supply': 1000000000,
          'emitted_supply': 51000000000000,
          'difficulty': '1234567890',
          'block_time_target': 15000,
          'average_block_time': 14950,
          'block_reward': 1000000,
          'mempool_size': 25,
          'version': '0.29.3',
          'network': entry.key,
          'miner_reward': 900000,
          'dev_reward': 100000,
        };

        final result = GetInfoResult.fromJson(json);
        expect(result.network, equals(entry.value));
      }
    });

    test('should verify supply calculations', () {
      // circulating_supply = emitted_supply - burned_supply
      // 50000000000000 = 51000000000000 - 1000000000000
      final json = {
        'height': 100000,
        'topoheight': 99950,
        'stable_height': 99900,
        'top_block_hash': 'top_block_hash_abc123',
        'circulating_supply': 50000000000000,
        'maximum_supply': 100000000000000,
        'burned_supply': 1000000000000,
        'emitted_supply': 51000000000000,
        'difficulty': '1234567890',
        'block_time_target': 15000,
        'average_block_time': 14950,
        'block_reward': 1000000,
        'mempool_size': 25,
        'version': '0.29.3',
        'network': 'Mainnet',
        'miner_reward': 900000,
        'dev_reward': 100000,
      };

      final result = GetInfoResult.fromJson(json);

      // Verify supply relationship: circulating = emitted - burned
      expect(
        result.circulatingSupply,
        equals((result.emittedSupply ?? 0) - (result.burnedSupply ?? 0)),
      );

      // Verify reward split
      expect(
        result.blockReward,
        equals((result.minerReward ?? 0) + (result.devReward ?? 0)),
      );
    });

    test('should support equality comparison', () {
      final result1 = GetInfoResult(
        height: 100000,
        topoHeight: 99950,
        stableHeight: 99900,
        topBlockHash: 'top_block_hash_abc123',
        circulatingSupply: 50000000000000,
        maximumSupply: 100000000000000,
        burnedSupply: 1000000000,
        emittedSupply: 51000000000000,
        difficulty: '1234567890',
        blockTimeTarget: 15000,
        averageBlockTime: 14950,
        blockReward: 1000000,
        mempoolSize: 25,
        version: '0.29.3',
        network: Network.mainnet,
        minerReward: 900000,
        devReward: 100000,
      );

      final result2 = GetInfoResult(
        height: 100000,
        topoHeight: 99950,
        stableHeight: 99900,
        topBlockHash: 'top_block_hash_abc123',
        circulatingSupply: 50000000000000,
        maximumSupply: 100000000000000,
        burnedSupply: 1000000000,
        emittedSupply: 51000000000000,
        difficulty: '1234567890',
        blockTimeTarget: 15000,
        averageBlockTime: 14950,
        blockReward: 1000000,
        mempoolSize: 25,
        version: '0.29.3',
        network: Network.mainnet,
        minerReward: 900000,
        devReward: 100000,
      );

      expect(result1, equals(result2));
    });
  });
}
