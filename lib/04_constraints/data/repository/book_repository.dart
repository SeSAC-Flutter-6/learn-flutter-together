import '../../../core/result.dart';
import '../model/book.dart';

abstract interface class BookRepository {
  Future<Result<List<Book>>> getBooks();

  Future<void> insertBook(String title, String author);

  Future<void> updateBook(Book book, String? title, String? author);

  Future<void> deleteBook(Book book);
}
