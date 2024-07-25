import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_view_model.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TodoViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('todo'),
      ),
      body: Stack(
        children: [
          ListView(
            children: state.todos.map((e) => Text(e)).toList(),
          ),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator()),
          if (state.fetchLoading)
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
        ],
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
