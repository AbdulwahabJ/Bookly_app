part of 'featurd_books_cubit.dart';

@immutable
sealed class FeaturdBooksState {}

final class FeaturdBooksInitial extends FeaturdBooksState {}

final class FeaturdBooksLoding extends FeaturdBooksState {}

final class FeaturdBooksFailure extends FeaturdBooksState {
  final String errMessage;

  FeaturdBooksFailure(this.errMessage);
}

final class FeaturdBooksSuccess extends FeaturdBooksState {
  final List<BookModel> books;
  FeaturdBooksSuccess(this.books);
}
