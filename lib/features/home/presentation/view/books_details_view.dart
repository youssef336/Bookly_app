import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksDetailsView extends StatefulWidget {
  const BooksDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BooksDetailsView> createState() => _BooksDetailsViewState();
}

class _BooksDetailsViewState extends State<BooksDetailsView> {
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(
      context,
    ).fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: BooksDetailsViewBody()));
  }
}
