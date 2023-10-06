import 'package:bookly_app/core/utils/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custome_loding_indecator.dart';
import 'package:bookly_app/featurse/home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
                  child: CustomeBookImage(
                      imageUrl:
                          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fa1%2Ff8%2F87%2Fa1f88733921c820db477d054fe96afbb.jpg&tbnid=2QNLUQRKNCujMM&vet=12ahUKEwivotP86NuBAxWCrEwKHeDHB6YQMygKegQIARBZ..i&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F607141593513709309%2F&docid=fiKteH2qEji9yM&w=1800&h=2700&q=book%20cover&ved=2ahUKEwivotP86NuBAxWCrEwKHeDHB6YQMygKegQIARBZ'),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomeErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomeLodingIndecetor();
        }
      },
    );
  }
}
