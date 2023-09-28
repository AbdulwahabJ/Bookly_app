import 'package:bookly_app/featurse/home/presentaion/views/widgets/sections/book_details_view_sections/book_details_section.dart';
import 'package:bookly_app/featurse/home/presentaion/views/widgets/sections/book_details_view_sections/simillar_book_section.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 14),//
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 40)),//
                SimillarBookSection(),
                SizedBox(height: 16),//
              ],
            ),
          ),
        ),
      ],
    );
  }
}
