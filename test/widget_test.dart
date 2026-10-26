import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main() {
  testWidgets('Expenses smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Expenses(),
      ),
    );

    // Verify AppBar title is rendered
    expect(find.text('Expense Tracker'), findsOneWidget);
    // Verify Add icon exists
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
