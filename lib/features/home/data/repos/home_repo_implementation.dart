import 'package:bookly_app/core/utils/api_servies.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';

import 'package:bookly_app/core/errors/failurs.dart';

import 'home_repo.dart';

class HomeREpoImpl implements HomeRepo {
  final Apiservices apiservices;

  HomeREpoImpl(this.apiservices);
  @override
  Future<Either<failure, List<BookModel>>> featchNewestBooks() async {
    try {
      var data = await apiservices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(serverFAilure.fromDioError(e));
      }
      return left(serverFAilure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<BookModel>>> featchfeatureBooks() async {
    try {
      var data = await apiservices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(serverFAilure.fromDioError(e));
      }
      return left(serverFAilure(e.toString()));
    }
  }
}
