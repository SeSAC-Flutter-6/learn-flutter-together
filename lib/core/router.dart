import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/03_food_recipe_app/presentation/sign_in/sign_in_screen.dart';

import '../04_constraints/data/repository/book_repository_impl.dart';
import '../04_constraints/presentation/book_list_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/sign_in',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        state.uri.

        return BookListScreen(
        repository: BookRepositoryImpl(),
      );
      },
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => const SignInScreen(),
    ),
  ],
);
