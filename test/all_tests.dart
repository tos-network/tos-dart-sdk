/// Main test file that imports and runs all tests
///
/// Run with: dart test

import 'data_transfer_objects/block_test.dart' as block_test;
import 'data_transfer_objects/get_balance_result_test.dart'
    as get_balance_result_test;
import 'data_transfer_objects/get_info_result_test.dart'
    as get_info_result_test;
import 'data_transfer_objects/get_stable_balance_result_test.dart'
    as get_stable_balance_result_test;
import 'data_transfer_objects/transfer_payload_test.dart'
    as transfer_payload_test;

void main() {
  // Data Transfer Objects tests
  block_test.main();
  get_balance_result_test.main();
  get_info_result_test.main();
  get_stable_balance_result_test.main();
  transfer_payload_test.main();
}
