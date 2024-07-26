import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_mvvm/data/repository/todo_repository.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_ui_state.dart';

class TodoViewModel extends ValueNotifier<TodoUiState> {
  final TodoRepository _todoRepository;

  TodoViewModel(this._todoRepository) : super(const TodoUiState()) {
    fetchTodos();
  }

  // ViewModel 액션은 모두 void or Future<void>
  void fetchTodos() async {
    value = value.copyWith(fetchLoading: true);

    final todos = await _todoRepository.getTodos();
    value = value.copyWith(
      todos: todos,
      fetchLoading: false,
    );
    notifyListeners();
  }

  // 사용자 액션
  void addTodo(String todo) async {
    value = value.copyWith(isLoading: true);
    notifyListeners();

    await _todoRepository.addTodo(todo);
    final todos = await _todoRepository.getTodos();
    value = value.copyWith(
      todos: todos,
      isLoading: false,
    );
    notifyListeners();
  }

  void removeTodo(String todo) {}
}
