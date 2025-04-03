// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/data/repos/Search_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepoImpl) : super(SearchBooksInitial());
  final SearchRepoImpl searchRepoImpl;
  String categorysearch = 'programming'; // Remove static

  void updateSearchCategory(String newCategory) {
    categorysearch = newCategory;
  }

  Future<void> fetchSearchBooks() async {
    emit(SearchBooksLoading());
    var result = await searchRepoImpl.FetchsearchBooks(
      categorysearch1: categorysearch,
    );
    result.fold(
      (failure) => emit(SearchBooksFailure(failure.message)),
      (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
