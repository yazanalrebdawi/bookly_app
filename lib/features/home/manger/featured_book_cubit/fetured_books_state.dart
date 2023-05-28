part of 'fetured_books_cubit.dart';

abstract class FeturedBooksState extends Equatable {
  const FeturedBooksState();

  @override
  List<Object> get props => [];
}

class FeturedBooksInitial extends FeturedBooksState {}

class FeturedBooksSuccess extends FeturedBooksState {
  final List<BookModel> books;

  FeturedBooksSuccess(this.books);
}

class FeturedBooksFailure extends FeturedBooksState {
  final String errorMessage;

  FeturedBooksFailure(this.errorMessage);
}

class FeturedBooksLoading extends FeturedBooksState {}
