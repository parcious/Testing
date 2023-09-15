import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/home_page.dart';
import 'package:testing_app/main.dart';

void main() {
  testWidgets('App should build and display the list',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('List of People'), findsOneWidget);

    expect(find.byType(ListTile), findsWidgets);

    expect(find.byType(Card), findsWidgets);

    
    expect(find.byKey(Key('parcious')), findsOneWidget);
    await tester.pumpAndSettle();

    
    expect(find.byType(GestureDetector), findsWidgets);
  });
}
