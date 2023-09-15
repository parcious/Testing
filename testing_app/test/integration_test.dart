import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/main.dart';


void main() {
  testWidgets('Integration Test', (WidgetTester tester) async {
    
    await tester.pumpWidget(MyApp());

    expect(find.text('List of People'), findsOneWidget);

    await tester.tap(find.byType(ListTile).first);
    
    await tester.pump();

    expect(find.byType(ListTile), findsWidgets);
  });
}
