import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/main.dart';

void main() {
  testWidgets('Перевірка', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // 1. Перевірка заголовка
    expect(find.text("IPZ-31: Ira's last Flutter App"), findsOneWidget);

    // 2. Перевірка іконки
    expect(find.widgetWithIcon(FloatingActionButton, Icons.person), findsOneWidget);

    // 3. Перевірка початкового стану
    expect(find.text('0'), findsOneWidget);

    // 4. Натискання кнопки
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // 5. Перевірка КРОКУ лічильника
    expect(find.text('5'), findsOneWidget);

    // 6. Перевірка відображення результату функції
    expect(find.text('0.4762'), findsOneWidget);
  });
}