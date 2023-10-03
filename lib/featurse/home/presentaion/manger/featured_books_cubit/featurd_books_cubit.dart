import 'package:bloc/bloc.dart';
import 'package:bookly_app/featurse/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'featurd_books_state.dart';

class FeaturdBooksCubit extends Cubit<FeaturdBooksState> {
  FeaturdBooksCubit() : super(FeaturdBooksInitial());
}
