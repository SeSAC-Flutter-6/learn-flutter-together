import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_mvvm/data/repository/todo_repository.dart';

class TodoViewModel with ChangeNotifier {
  final TodoRepository _todoRepository;

  TodoViewModel(this._todoRepository) {
    fetchTodos();
  }

  // 상태들 == 화면에 필요한 UI 데이터
  List<String> _todos = [];

  List<String> get todos => List.unmodifiable(_todos);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  bool _fetchLoading = false;

  bool get fetchLoading => _fetchLoading; // <--------- 나가는 쪽
  // -----------------------------------
  // 실행 ------------>

  // ViewModel 액션은 모두 void or Future<void>
  void fetchTodos() async {
    _fetchLoading = true;
    notifyListeners();

    _todos = await _todoRepository.getTodos();
    _fetchLoading = false;
    notifyListeners();
  }

  // 사용자 액션
  void addTodo(String todo) async {
    _isLoading = true;
    notifyListeners();

    await _todoRepository.addTodo(todo);
    _todos = await _todoRepository.getTodos();
    _isLoading = false;
    notifyListeners();
  }

  void removeTodo(String todo) {
  }
}