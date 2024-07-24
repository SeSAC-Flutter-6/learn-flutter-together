import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/03_food_recipe_app/presentation/sign_in/sign_in_screen.dart';
import 'package:learn_flutter_together/05_mvvm/data/repository/todo_repository.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_screen.dart';
import 'package:learn_flutter_together/05_mvvm/presentation/todo/todo_view_model.dart';
import 'package:learn_flutter_together/05_mvvm/provider/todo_view_model_provider.dart';
import 'package:provider/provider.dart';

import '../04_constraints/data/repository/book_repository_impl.dart';
import '../04_constraints/presentation/book_list_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/todo',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return BookListScreen(
          repository: BookRepositoryImpl(),
        );
      },
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/todo',
      builder: (context, state) {
        // Factory
        return ChangeNotifierProvider<TodoViewModel>(
          create: (context) => TodoViewModel(
            TodoRepository(),
          ),
          child: const TodoScreen(),
        );
      },
    ),
  ],
);
