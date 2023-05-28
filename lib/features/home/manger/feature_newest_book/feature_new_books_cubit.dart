import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failurs.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../data/model/book_model/book_model.dart';

part 'feature_new_books_state.dart';

class FeatureNewBooksCubit extends Cubit<FeatureNewBooksState> {
  FeatureNewBooksCubit(this.homeRepo) : super(FeatureNewBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchNewestBooks() async {
    emit(FeatureNewBooksLOading());
    var result = await homeRepo.featchNewestBooks();
    result.fold((failure) {
      emit(
        FeatureNewBooksFailure(failure.errorMessage),
      );
    }, (books) {
      emit(
        FeatureNewBooksSuccess(books),
      );
    });
  }
}
