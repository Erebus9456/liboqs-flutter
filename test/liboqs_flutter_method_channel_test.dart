import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liboqs_flutter/liboqs_flutter_method_channel.dart';

void main() {
  MethodChannelLiboqsFlutter platform = MethodChannelLiboqsFlutter();
  const MethodChannel channel = MethodChannel('liboqs_flutter');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
