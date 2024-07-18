class TodoRepository {
  final List<String> _todos = [
    '빨래',
    '청소',
  ];

  Future<List<String>> getTodos() async {
    await Future.delayed(const Duration(seconds: 3));
    return List.unmodifiable(_todos);
  }

  // CRUD
  Future<void> addTodo(String todo) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _todos.add(todo);
  }
}
