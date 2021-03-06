import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_trust_wallet_core');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterTrustWalletCore.platformVersion, '42');
  });
}
