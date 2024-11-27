import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab15/main.dart';

void main() {
  group('FunctionCalculator Tests', () {
    test('calculate should return correct value', () {
      final calculator = FunctionCalculator();

      expect(calculator.calculate(0), 12);
      expect(calculator.calculate(1), 12);
      expect(calculator.calculate(2), 10);
      expect(calculator.calculate(3), 6);
      expect(calculator.calculate(4), 0);
      expect(calculator.calculate(5), -8);
    });
  });

  group('MyApp Widget Tests', () {
    testWidgets('should have title text', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text('IPZ-34: Vitalii\'s last Flutter App'), findsOneWidget);
    });

    testWidgets('should have a FloatingActionButton with correct icon', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      final fabFinder = find.byType(FloatingActionButton);
      expect(fabFinder, findsOneWidget);
      final fab = tester.widget<FloatingActionButton>(fabFinder);
      expect(fab.child, isA<Icon>());
      expect((fab.child as Icon).icon, Icons.mouse);
    });

    testWidgets('should increment counter by 2 when FloatingActionButton is pressed', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('0'), findsOneWidget);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
      expect(find.text('2'), findsOneWidget);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
      expect(find.text('4'), findsOneWidget);
    });
  });
}