import 'package:flutter/material.dart';
import 'package:learn_flutter_together/04_constraints/data/repository/book_repository.dart';

import '../../core/result.dart';
import '../data/model/book.dart';

class BookListScreen extends StatelessWidget {
  final BookRepository repository;

  const BookListScreen({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
      ),
      body: FutureBuilder<Result<List<Book>>>(
        future: repository.getBooks(),
        builder:
            (BuildContext context, AsyncSnapshot<Result<List<Book>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final booksResult = snapshot.data!;

          switch (booksResult) {
            case Success<List<Book>>():
              return ListView(
                children: booksResult.data.map((e) => Text(e.title)).toList(),
              );
            case Error<List<Book>>():
              return Text(booksResult.message);
          }
        },
      ),
    );
  }
}
