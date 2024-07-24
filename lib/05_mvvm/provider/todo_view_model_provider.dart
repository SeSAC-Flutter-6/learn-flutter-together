import 'package:flutter/material.dart';

import '../presentation/todo/todo_view_model.dart';

class TodoViewModelProvider extends InheritedWidget {
  final TodoViewModel todoViewModel;

  const TodoViewModelProvider({
    super.key,
    required super.child,
    required this.todoViewModel,
  });

  static TodoViewModelProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TodoViewModelProvider>()!;
  }

  @override
  bool updateShouldNotify(TodoViewModelProvider oldWidget) {
    return this != oldWidget;
  }
}
