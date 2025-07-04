import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_appp/main.dart';

void main() {
  testWidgets('Basic app test', (WidgetTester tester) async {
    // Build test app
    // await tester.pumpWidget(const MyApp());

    // Check for expected text
    expect(find.text('Weather App Test'), findsOneWidget);
  });
}