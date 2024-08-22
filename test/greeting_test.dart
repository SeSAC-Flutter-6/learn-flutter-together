import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/01_widget_rule/presentation/component/greeting.dart';
import 'package:learn_flutter_together/01_widget_rule/presentation/main_screen.dart';

void main() {
  // testWidgets('MainScreen Test', (tester) async {
  //   await tester.pumpWidget(
  //     const MaterialApp(
  //       home: MainScreen(),
  //     ),
  //   );
  //
  //   expect(find.text('Hello 월드'), findsOneWidget);
  //
  //   await tester.tap(find.byType(FloatingActionButton));
  //   await tester.pumpAndSettle();
  //   expect(find.text('Hello 바꼈음'), findsOneWidget);
  // });

  testWidgets('Greeting 위젯 테스트', (tester) async {
    String text = 'world';
    String result = '';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Greeting(
            name: text,
            onTab: (value) {
              result = value;
            },
          ),
        ),
      ),
    );

    expect(find.text('Hello world'), findsOneWidget);

    await tester.tap(find.byKey(const Key('text')));
    expect(result, 'world');
  });
}
