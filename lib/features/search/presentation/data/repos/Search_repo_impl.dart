// ignore: duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/data/repos/Search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);

  @override
  // ignore: non_constant_identifier_names
  Future<Either<Failure, List<BookModel>>> FetchsearchBooks({
    required String categorysearch1,
  }) async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:$categorysearch1&Filtering=free-ebooks&Sorting=relevance',
      );

      List<BookModel> books = [];
      if (data['items'] != null) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      } else {
        return left(ServerFailure(message: "No books found"));
      }
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } on Exception catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
