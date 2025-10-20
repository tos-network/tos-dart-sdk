import 'package:test/test.dart';
import 'package:tos_dart_sdk/src/data_transfer_objects/dtos.dart';

void main() {
  group('Block', () {
    test('should create from valid JSON with required fields only', () {
      final json = {
        'block_type': 'Normal',
        'cumulative_difficulty': '1000000000',
        'difficulty': '500000',
        'extra_nonce': 'abcd1234',
        'hash': 'block_hash_123',
        'blue_score': 12345,
        'miner': 'miner_address_xyz',
        'nonce': 42,
        'timestamp': 1634567890000,
        'tips': ['tip1', 'tip2'],
        'total_size_in_bytes': 2048,
        'txs_hashes': ['tx1', 'tx2', 'tx3'],
        'version': 1,
      };

      final block = Block.fromJson(json);

      expect(block.blockType, equals('Normal'));
      expect(block.cumulativeDifficulty, equals('1000000000'));
      expect(block.difficulty, equals('500000'));
      expect(block.extraNonce, equals('abcd1234'));
      expect(block.hash, equals('block_hash_123'));
      expect(block.blueScore, equals(12345));
      expect(block.miner, equals('miner_address_xyz'));
      expect(block.nonce, equals(42));
      expect(block.timestamp, equals(1634567890000));
      expect(block.tips, equals(['tip1', 'tip2']));
      expect(block.totalSizeInBytes, equals(2048));
      expect(block.txsHashes, equals(['tx1', 'tx2', 'tx3']));
      expect(block.version, equals(1));
    });

    test('should create from JSON with all optional fields', () {
      final json = {
        'block_type': 'Normal',
        'cumulative_difficulty': '1000000000',
        'difficulty': '500000',
        'extra_nonce': 'abcd1234',
        'hash': 'block_hash_123',
        'blue_score': 12345,
        'miner': 'miner_address_xyz',
        'nonce': 42,
        'reward': 1000000,
        'miner_reward': 900000,
        'dev_reward': 100000,
        'supply': 50000000000,
        'timestamp': 1634567890000,
        'tips': ['tip1', 'tip2'],
        'topoheight': 12340,
        'total_size_in_bytes': 2048,
        'total_fees': 5000,
        'txs_hashes': ['tx1', 'tx2', 'tx3'],
        'version': 1,
      };

      final block = Block.fromJson(json);

      expect(block.reward, equals(1000000));
      expect(block.minerReward, equals(900000));
      expect(block.devReward, equals(100000));
      expect(block.supply, equals(50000000000));
      expect(block.topoHeight, equals(12340));
      expect(block.totalFees, equals(5000));
    });

    test('should serialize to JSON correctly', () {
      final block = Block(
        blockType: 'Normal',
        cumulativeDifficulty: '1000000000',
        difficulty: '500000',
        extraNonce: 'abcd1234',
        hash: 'block_hash_123',
        blueScore: 12345,
        miner: 'miner_address_xyz',
        nonce: 42,
        timestamp: 1634567890000,
        tips: ['tip1', 'tip2'],
        totalSizeInBytes: 2048,
        txsHashes: ['tx1', 'tx2', 'tx3'],
        version: 1,
      );

      final json = block.toJson();

      expect(json['block_type'], equals('Normal'));
      expect(json['blue_score'], equals(12345));
      expect(json['hash'], equals('block_hash_123'));
      expect(json['miner'], equals('miner_address_xyz'));
    });

    test('should handle different block types', () {
      for (final blockType in ['Normal', 'Sync', 'Side', 'Orphaned']) {
        final json = {
          'block_type': blockType,
          'cumulative_difficulty': '1000000000',
          'difficulty': '500000',
          'extra_nonce': 'abcd1234',
          'hash': 'block_hash_$blockType',
          'blue_score': 12345,
          'miner': 'miner_address_xyz',
          'nonce': 42,
          'timestamp': 1634567890000,
          'tips': ['tip1'],
          'total_size_in_bytes': 2048,
          'txs_hashes': ['tx1'],
          'version': 1,
        };

        final block = Block.fromJson(json);
        expect(block.blockType, equals(blockType));
      }
    });

    test('should support equality comparison', () {
      final block1 = Block(
        blockType: 'Normal',
        cumulativeDifficulty: '1000000000',
        difficulty: '500000',
        extraNonce: 'abcd1234',
        hash: 'block_hash_123',
        blueScore: 12345,
        miner: 'miner_address_xyz',
        nonce: 42,
        timestamp: 1634567890000,
        tips: ['tip1', 'tip2'],
        totalSizeInBytes: 2048,
        txsHashes: ['tx1', 'tx2'],
        version: 1,
      );

      final block2 = Block(
        blockType: 'Normal',
        cumulativeDifficulty: '1000000000',
        difficulty: '500000',
        extraNonce: 'abcd1234',
        hash: 'block_hash_123',
        blueScore: 12345,
        miner: 'miner_address_xyz',
        nonce: 42,
        timestamp: 1634567890000,
        tips: ['tip1', 'tip2'],
        totalSizeInBytes: 2048,
        txsHashes: ['tx1', 'tx2'],
        version: 1,
      );

      final block3 = Block(
        blockType: 'Normal',
        cumulativeDifficulty: '1000000000',
        difficulty: '500000',
        extraNonce: 'abcd1234',
        hash: 'different_hash',
        blueScore: 12345,
        miner: 'miner_address_xyz',
        nonce: 42,
        timestamp: 1634567890000,
        tips: ['tip1', 'tip2'],
        totalSizeInBytes: 2048,
        txsHashes: ['tx1', 'tx2'],
        version: 1,
      );

      expect(block1, equals(block2));
      expect(block1, isNot(equals(block3)));
    });
  });
}
