// ignore: duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  // ignore: non_constant_identifier_names
  Future<Either<Failure, List<BookModel>>> FetchsearchBooks({
    required String categorysearch1,
  });
}
