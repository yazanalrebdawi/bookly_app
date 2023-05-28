part of 'feature_new_books_cubit.dart';

abstract class FeatureNewBooksState extends Equatable {
  const FeatureNewBooksState();

  @override
  List<Object> get props => [];
}

class FeatureNewBooksInitial extends FeatureNewBooksState {}

class FeatureNewBooksLOading extends FeatureNewBooksState {}

class FeatureNewBooksSuccess extends FeatureNewBooksState {
  List<BookModel> books;
  FeatureNewBooksSuccess(this.books);
}

class FeatureNewBooksFailure extends FeatureNewBooksState {
  final errorMessage;

  FeatureNewBooksFailure(this.errorMessage);
}
