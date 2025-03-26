import 'package:bookly_app/features/home/presentation/view/widgets/books_details_view_body.dart';
import 'package:flutter/material.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: BooksDetailsViewBody()));
  }
}
