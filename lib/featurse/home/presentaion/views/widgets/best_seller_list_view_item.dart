import 'package:bookly_app/featurse/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomeBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(width: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kPlayfairDisplay),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle18
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        BookRating(
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                          counter: bookModel.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
