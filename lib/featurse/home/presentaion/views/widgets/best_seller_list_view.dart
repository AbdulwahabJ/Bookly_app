import 'package:bookly_app/core/utils/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custome_loding_indecator.dart';
import 'package:bookly_app/featurse/home/presentaion/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              // shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BookListViewItem(bookModel: state.books[index]),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomeErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomeLodingIndecetor();
        }
      },
    );
  }
}
