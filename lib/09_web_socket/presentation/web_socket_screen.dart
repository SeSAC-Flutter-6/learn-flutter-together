import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_screen.dart';
import 'package:learn_flutter_together/09_web_socket/presentation/web_socket_view_model.dart';
import 'package:provider/provider.dart';

class WebSocketScreen extends StatelessWidget {
  const WebSocketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WebSocketViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: Center(
        child: Text(state.items.toString()),
      ),
    );
  }
}
