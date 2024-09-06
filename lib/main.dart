import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_mvvm/data/repository/todo_repository.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_view_model.dart';
import 'package:learn_flutter_together/05_mvvm/provider/todo_view_model_provider.dart';
import 'package:learn_flutter_together/12_sqflite/di/di_setup.dart';

import 'core/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(
    // singleton
    TodoViewModelProvider(
      todoViewModel: TodoViewModel(TodoRepository()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
