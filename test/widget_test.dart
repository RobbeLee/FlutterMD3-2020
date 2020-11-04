import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('My widget has text', (WidgetTester tester) async {
    await tester.MyWidget(MyApp(text: 'T'));

    final textFinder = find.text('T');

    expect(textFinder, findsOneWidget);
  });
}
