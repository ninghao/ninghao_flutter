import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ninghao_flutter/demo/test/test_demo.dart';

void main() {
  test('should return hello + something.', () {
    var string = NinghaoTestDemo.greet('ninghao');
    expect(string, 'hello ninghao ~~');
  });

  testWidgets('widget testing demo', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TestDemo()
      )
    );

    final labelText = find.text('hello');

    // expect(labelText, findsNothing);
    // expect(labelText, findsOneWidget);
    expect(labelText, findsNWidgets(1));

    final actionChipLabelText = find.text('0');
    expect(actionChipLabelText, findsOneWidget);

    final actionChip = find.byType(ActionChip);
    await tester.tap(actionChip);
    await tester.pump();

    final actionChipLabelTextAfterTap = find.text('1');
    expect(actionChipLabelTextAfterTap, findsOneWidget);
    expect(actionChipLabelText, findsNothing);
  });
}