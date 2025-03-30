import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBookLoading());
    var result = await homeRepo.FetchfeaturedBooks();
    result.fold(
      (failure) {
        emit(FeatureBookFailure(failure.message));
      },
      (books) {
        emit(FeatureBookSuccess(books));
      },
    );
  }
}
