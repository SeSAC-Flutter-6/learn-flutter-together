import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_view_model.dart';

class TodoScreen extends StatelessWidget {
  final TodoViewModel viewModel;

  const TodoScreen({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('todo'),
      ),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (BuildContext context, Widget? child) {
          final todos = viewModel.todos;

          return Stack(
            children: [
              ListView(
                children: todos.map((e) => Text(e)).toList(),
              ),
              if (viewModel.isLoading)
                const Center(child: CircularProgressIndicator()),
              if (viewModel.fetchLoading)
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('추가'),
        onPressed: () {
          viewModel.addTodo('빨래');
        },
      ),
    );
  }
}
