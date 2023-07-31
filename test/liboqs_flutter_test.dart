import 'package:flutter_test/flutter_test.dart';
import 'package:liboqs_flutter/liboqs_flutter.dart';
import 'package:liboqs_flutter/liboqs_flutter_platform_interface.dart';
import 'package:liboqs_flutter/liboqs_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLiboqsFlutterPlatform
    with MockPlatformInterfaceMixin
    implements LiboqsFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LiboqsFlutterPlatform initialPlatform = LiboqsFlutterPlatform.instance;

  test('$MethodChannelLiboqsFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLiboqsFlutter>());
  });

  test('getPlatformVersion', () async {
    LiboqsFlutter liboqsFlutterPlugin = LiboqsFlutter();
    MockLiboqsFlutterPlatform fakePlatform = MockLiboqsFlutterPlatform();
    LiboqsFlutterPlatform.instance = fakePlatform;

    expect(await liboqsFlutterPlugin.getPlatformVersion(), '42');
  });
}
