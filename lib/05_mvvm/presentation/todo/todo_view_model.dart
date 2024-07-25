import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_mvvm/data/repository/todo_repository.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_ui_state.dart';

class TodoViewModel with ChangeNotifier {
  final TodoRepository _todoRepository;

  TodoViewModel(this._todoRepository) {
    fetchTodos();
  }

  // 상태들 == 화면에 필요한 UI 데이터
  // vmstate
  TodoUiState _state = const TodoUiState();

  TodoUiState get state => _state;

  // -----------------------------------
  // 실행 ------------>

  // ViewModel 액션은 모두 void or Future<void>
  void fetchTodos() async {
    _state = state.copyWith(fetchLoading: true);
    notifyListeners();

    final todos = await _todoRepository.getTodos();
    _state = state.copyWith(
      todos: todos,
      fetchLoading: false,
    );
    notifyListeners();
  }

  // 사용자 액션
  void addTodo(String todo) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    await _todoRepository.addTodo(todo);
    final todos = await _todoRepository.getTodos();
    _state = state.copyWith(
      todos: todos,
      isLoading: false,
    );
    notifyListeners();
  }

  void removeTodo(String todo) {}
}
