# Integration Tests

This directory contains integration tests that connect to the TOS testnet to verify real-world functionality.

## ⚠️ Important Notes

- These tests connect to **testnet** (`testnode.tos.network`)
- **DO NOT** use these tests against mainnet
- Tests require a working internet connection
- Tests may take longer to run (depends on network latency)
- Some tests may fail if the testnet is under maintenance

## Running Integration Tests

### Run all integration tests

```bash
dart test --tags integration
```

### Run specific integration test file

```bash
dart test test/integration/basic_integration_test.dart
```

### Run with detailed output

```bash
dart test --tags integration --reporter=expanded
```

### Run only unit tests (skip integration tests)

```bash
dart test --exclude-tags integration
```

## Test Files

### ✅ `basic_integration_test.dart`
**Status: Working**

Tests basic daemon client functionality against testnet:
- ✅ Connection to testnet
- ✅ Getting version
- ✅ Getting blockchain info (blue score, topoheight, stable values)
- ✅ Getting top block
- ✅ Getting tips
- ✅ Counting assets, accounts, transactions

These tests are confirmed working and safe to run.

### ⚠️ Advanced Test Files (`.dart.skip`)

The following files contain more advanced tests but are currently disabled because they need adjustments to match the exact SDK API signatures:

- `daemon_client_test.dart.skip` - Extended daemon tests
- `blockchain_query_test.dart.skip` - Block query operations
- `account_query_test.dart.skip` - Account balance and history queries

**To enable these tests:**
1. Rename `.dart.skip` back to `.dart`
2. Fix API mismatches based on actual SDK types
3. Test individually to verify they work

## Timeout Configuration

All tests have a 10-second timeout to account for network delays.
If tests timeout frequently, you may need to increase the timeout values.

## Expected Behavior

- ✅ `basic_integration_test.dart` should pass when testnet is healthy
- ⚠️ Tests may fail if testnet is under maintenance
- ⚠️ Network errors indicate connection issues

## Troubleshooting

### Tests timeout or fail to connect
- Check your internet connection
- Verify testnet is online: `ping testnode.tos.network`
- Testnet may be under maintenance

### All tests fail
- Testnet node may be down
- Check testnet status with the TOS Network team
- Try again later

### Random failures
- Network instability
- Testnet node may be restarting
- Retry the tests after a few minutes

## Adding New Integration Tests

When adding new integration tests:

1. Use the `@Tags(['integration'])` annotation
2. Connect to `testnetNodeURL` (never mainnet)
3. Add appropriate timeouts (10+ seconds)
4. Handle errors gracefully (testnet may not have test data)
5. Add `// ignore: avoid_print` for debug output
6. Follow the pattern in `basic_integration_test.dart`

Example:
```dart
@Tags(['integration'])
library;

import 'package:test/test.dart';
import 'package:tos_dart_sdk/tos_dart_sdk.dart';

void main() {
  group('My Integration Tests', () {
    late DaemonClient client;

    setUp(() {
      client = DaemonClient(
        endPoint: testnetNodeURL,
        secureWebSocket: true,
      );
      client.connect();
    });

    tearDown(() {
      client.disconnect();
    });

    test('my test', () async {
      await Future<void>.delayed(const Duration(seconds: 1));
      // Your test code here
    }, timeout: const Timeout(Duration(seconds: 10)));
  });
}
```

## Notes

- Integration tests are complementary to unit tests
- Unit tests verify logic, integration tests verify network compatibility
- Keep integration tests focused and fast
- Don't rely on specific blockchain state (it changes constantly)
