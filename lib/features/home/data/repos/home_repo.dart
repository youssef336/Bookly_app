import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> FetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> FetchfeaturedBooks();
  Future<Either<Failure, List<BookModel>>> FetchSimilarBooks({
    required String category,
  });
}
