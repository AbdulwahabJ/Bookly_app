import 'package:bloc/bloc.dart';
import 'package:bookly_app/featurse/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/featurse/home/data/models/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featurd_books_state.dart';

class FeaturdBooksCubit extends Cubit<FeaturdBooksState> {
  FeaturdBooksCubit(this.homeRepo) : super(FeaturdBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturdBooksLoding());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (failure) => {
              emit(FeaturdBooksFailure(failure.errMessage)),
            },
        (books) => {
              emit(FeaturdBooksSuccess(books)),
            });
  }
}
