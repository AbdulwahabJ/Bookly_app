import 'package:bookly_app/core/utils/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custome_loding_indecator.dart';
import 'package:bookly_app/featurse/home/presentaion/manger/featured_books_cubit/featurd_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturdBooksCubit, FeaturdBooksState>(
        builder: (context, state) {
      if (state is FeaturdBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                child: CustomeBookImage(),
              );
            },
          ),
        );
      } else if (state is FeaturdBooksFailure) {
        return CustomeErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomeLodingIndecetor();
      }
    });
  }
}
