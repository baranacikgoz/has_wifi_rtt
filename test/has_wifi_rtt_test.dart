import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:has_wifi_rtt/has_wifi_rtt.dart';

void main() {
  const MethodChannel channel = MethodChannel('has_wifi_rtt');

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
    expect(await HasWifiRtt.platformVersion, '42');
  });
}
