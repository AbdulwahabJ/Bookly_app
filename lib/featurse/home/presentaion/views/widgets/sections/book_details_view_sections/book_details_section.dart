import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../../../../data/models/book_model/book_model.dart';
import '../../book_Rating.dart';
import '../../books_action.dart';
import '../../custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: CustomeBookImage(
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          textAlign: TextAlign.center,
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontFamily: kPlayfairDisplay),
        ),
        const SizedBox(height: 8),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          counter: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 16),
        BooksAction(
          book: book,
        ),
      ],
    );
  }
}

class BookModle {}
