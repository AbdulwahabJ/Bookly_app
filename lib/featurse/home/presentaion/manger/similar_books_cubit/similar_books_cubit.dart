import 'package:bloc/bloc.dart';
import 'package:bookly_app/featurse/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/models/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilartBooks({required String category}) async {
    emit(SimilarBooksLoding());
    var result = await homeRepo.fetchSimilarBooks(caregory: category);
    result.fold(
        (failure) => {
              emit(SimilarBooksFailure(failure.errMessage)),
            },
        (books) => {
              emit(SimilarBooksSuccess(books)),
            });
  }
}
