import 'package:learn_flutter_together/04_constraints/data/model/book.dart';
import 'package:learn_flutter_together/04_constraints/data/repository/book_repository.dart';
import 'package:learn_flutter_together/core/result.dart';

class BookRepositoryImpl implements BookRepository {
  final List<Book> _books = [
    const Book(id: 1, title: 'title', author: 'author'),
    const Book(id: 2, title: 'title2', author: 'author2'),
    const Book(id: 3, title: 'title3', author: 'author3'),
  ];

  @override
  Future<void> deleteBook(Book book) {
    // TODO: implement deleteBook
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Book>>> getBooks() async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      return Result.success(List.unmodifiable(_books));
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<void> insertBook(String title, String author) {
    // TODO: implement insertBook
    throw UnimplementedError();
  }

  @override
  Future<void> updateBook(Book book, String? title, String? author) {
    // TODO: implement updateBook
    throw UnimplementedError();
  }

}