// Example code demonstrating SDK usage - print statements acceptable
// ignore_for_file: avoid_print, cascade_invocations
// ignore_for_file: avoid_catches_without_on_clauses

import 'dart:io';

import 'package:tos_dart_sdk/tos_dart_sdk.dart';

Future<void> main() async {
  try {
    // Create a daemon client repository which will be used
    // to interact with a TOS node.
    final daemonClient = DaemonClient(
      endPoint: localhostAddress,
      secureWebSocket: false,
    );

    // You must initiate the connection first and set up event listeners.
    daemonClient
      ..connect()
      // You can also use the repository to listen to events.
      ..onNewBlock((block) {
        print('new block: $block');
      })
      // You can add multiple callbacks for the same event.
      // They will be called in the order they were added.
      ..onNewBlock((block) {
        print('another callback for new block: $block');
      })
      // Here with another events.
      ..onBlockOrdered((block) {
        print('block ordered: $block');
      })
      ..onTransactionAddedInMempool((tx) {
        print('tx added in mempool: $tx');
      })
      ..onTransactionExecuted((tx) {
        print('tx executed: $tx');
      })
      // You can also unsubscribe from the events.
      // This will remove all the callbacks for the event.
      ..unsubscribeFromNewBlock()
      // You can unsubscribe from all the events at once.
      ..unsubscribeFromAll()
      // You can also add callbacks for the connection events ...
      ..onOpen(() {
        print('channel opened');
      })
      ..onClose(() {
        print('channel closed');
      })
      ..onError((error) {
        print('channel error: $error');
      });

    // You can use the repository to make requests to the daemon.
    final res = await daemonClient.getInfo();
    print('result: $res');

    // Close connection and exit
    await Future<void>.delayed(const Duration(seconds: 1));
    daemonClient.disconnect();
    exit(0);
  } catch (e) {
    print(e);
    exit(1);
  }
}
