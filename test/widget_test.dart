import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:murillo_activity1/main.dart';

void main() {
  testWidgets('App bar keeps the Murillo_Activity1 title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Murillo_Activity1'), findsOneWidget);
  });

  testWidgets('Pavlova recipe renders its details', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Pavlova'), findsOneWidget);
    expect(find.text('170 Reviews'), findsOneWidget);
    expect(find.text('PREP'), findsOneWidget);
    expect(find.text('COOK'), findsOneWidget);
    expect(find.text('FEEDS'), findsOneWidget);
  });

  testWidgets('Star rating shows four filled stars and one outline', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byIcon(Icons.star), findsNWidgets(4));
    expect(find.byIcon(Icons.star_border), findsOneWidget);
  });

  testWidgets('Hero image asset is rendered', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Image), findsWidgets);
  });
}