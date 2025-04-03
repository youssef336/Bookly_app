// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  // ignore: non_constant_identifier_names
  Future<void> FetcNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.FetchNewestBooks();
    result.fold(
      (failure) {
        emit(
          NewestBooksFailure(failure.message),
        ); // Assuming 'message' is the correct property
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
