// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:biodata_app/main.dart'; // Pastikan ini sesuai dengan nama proyek Anda

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the counter starts at 0.
    expect(find.text('0'), findsOneWidget); // Mencari teks '0' di layar
    expect(find.text('1'), findsNothing);  // Memastikan teks '1' tidak ada

    // Simulate a tap on the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented to 1.
    expect(find.text('0'), findsNothing);  // Memastikan teks '0' tidak ada
    expect(find.text('1'), findsOneWidget); // Mencari teks '1' di layar
  });
}
