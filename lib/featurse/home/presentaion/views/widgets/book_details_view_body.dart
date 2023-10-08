import 'package:bookly_app/featurse/home/presentaion/views/widgets/sections/book_details_view_sections/book_details_section.dart';
import 'package:bookly_app/featurse/home/presentaion/views/widgets/sections/book_details_view_sections/simillar_book_section.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 14), //
                BookDetailsSection(book: book),
                const Expanded(child: SizedBox(height: 40)), //
                const SimillarBookSection(),
                const SizedBox(height: 16), //
              ],
            ),
          ),
        ),
      ],
    );
  }
}
