import 'package:flutter_test/flutter_test.dart';
import 'package:ninghao_flutter/demo/test/test_demo.dart';

void main() {
  test('should return hello + something.', () {
    var string = NinghaoTestDemo.greet('ninghao');
    expect(string, 'hello ninghao ~~');
  });
}