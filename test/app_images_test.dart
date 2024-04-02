import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:medkit/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.med).existsSync(), isTrue);
    expect(File(AppImages.med2).existsSync(), isTrue);
  });
}
