import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'fetured_books_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksState> {
  FeturedBooksCubit(this.homeRepo) : super(FeturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> featchfeatureBooks() async {
    emit(FeturedBooksLoading());
    var result = await homeRepo.featchfeatureBooks();
    result.fold((left) {
      emit(FeturedBooksFailure(left.errorMessage));
    }, (books) {
      emit(FeturedBooksSuccess(books));
    });
  }
}
