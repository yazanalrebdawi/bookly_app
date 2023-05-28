import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failurs.dart';

abstract class HomeRepo {
  Future<Either<failure, List<BookModel>>> featchNewestBooks();
  Future<Either<failure, List<BookModel>>> featchfeatureBooks();
}
