import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // ignore: non_constant_identifier_names
  Future<Either<Failure, List<BookModel>>> FetchNewestBooks();
  // ignore: non_constant_identifier_names
  Future<Either<Failure, List<BookModel>>> FetchfeaturedBooks();
  // ignore: non_constant_identifier_names
  Future<Either<Failure, List<BookModel>>> FetchSimilarBooks({
    required String category,
  });
}
