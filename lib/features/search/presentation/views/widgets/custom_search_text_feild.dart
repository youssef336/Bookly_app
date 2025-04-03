import 'package:bookly_app/features/search/presentation/views/manager/Search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _searchController, // Connect the controller
      onFieldSubmitted: (value) {
        // Optional: Trigger search on enter
        final cubit = BlocProvider.of<SearchBooksCubit>(context);
        cubit.updateSearchCategory(value);
        cubit.fetchSearchBooks();
      },
      decoration: InputDecoration(
        enabledBorder: buildOutlineinputBorder(),
        focusedBorder: buildOutlineinputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            final cubit = BlocProvider.of<SearchBooksCubit>(context);
            cubit.updateSearchCategory(_searchController.text); // Pass the text
            cubit.fetchSearchBooks();
          },
          icon: const Opacity(
            opacity: 0.8,
            child: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineinputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
