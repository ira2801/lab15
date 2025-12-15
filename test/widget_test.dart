import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/main.dart';

    void main() {
      testWidgets('Перевірка всіх вимог варіанту', (WidgetTester tester) async {

        await tester.pumpWidget(const MyApp());

        expect(find.text("IPZ-31: Ira's last Flutter App"), findsOneWidget);
        expect(find.widgetWithIcon(FloatingActionButton, Icons.person), findsOneWidget);

        await tester.tap(find.byType(FloatingActionButton));
        await tester.pump();

        expect(find.text('5'), findsOneWidget);
        expect(find.text('0.4762'), findsOneWidget);
      });
}