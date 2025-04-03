import 'package:bookly_app/features/search/presentation/views/manager/Search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, this.searchQuery});
  final String? searchQuery;
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SearchBooksCubit>(context).fetchSearchBooks(
      // Replace 'defaultCategory' with the appropriate value
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchViewBody(catagory: widget.searchQuery ?? 'programming'),
      ),
    );
  }
}
