import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/featurse/home/presentaion/views/widgets/book_Rating.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .20),
            child: const CustomeBookImage(),
          ),
          const SizedBox(height: 24),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontFamily: kPlayfairDisplay),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
