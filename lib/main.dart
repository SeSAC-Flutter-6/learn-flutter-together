import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/checkbox_practice_screen.dart';

import '01_widget_rule/presentation/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CheckboxPracticeScreen(),
    );
  }
}
