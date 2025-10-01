/// JSON-RPC key for TOS method/event.
abstract class TosJsonKey {
  /// @nodoc
  const TosJsonKey(this.jsonKey);

  /// @nodoc
  final String jsonKey;
}

/// TOS event subscription.
enum TosSubscription implements TosJsonKey {
  /// Subscribe to an event.
  subscribe('subscribe'),

  /// Unsubscribe to an event.
  unsubscribe('unsubscribe');

  /// @nodoc
  const TosSubscription(this.jsonKey);

  /// The json key of the enum value.
  @override
  final String jsonKey;
}
