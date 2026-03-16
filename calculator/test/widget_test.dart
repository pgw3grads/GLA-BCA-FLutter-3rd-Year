import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/main.dart';

void main() {
  testWidgets('Calculator smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CalculatorApp());

    // Verify that the calculator displays '0' initially.
    expect(find.text('0'), findsWidgets);
  });
}
