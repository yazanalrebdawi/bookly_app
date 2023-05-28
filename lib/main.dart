import 'package:bookly_app/core/utils/api_servies.dart';
import 'package:bookly_app/core/utils/sevicelocator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/manger/feature_newest_book/feature_new_books_cubit.dart';
import 'package:bookly_app/features/home/manger/featured_book_cubit/fetured_books_cubit.dart';
import 'package:bookly_app/presentation/views/splash_view.dart';
import 'package:bookly_app/presentation/views/widgets/constatnts/const.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

void main() {
  setUp();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeturedBooksCubit(getit.get<HomeREpoImpl>())
              ..featchfeatureBooks()),
        BlocProvider(
            create: (context) =>
                FeatureNewBooksCubit(getit.get<HomeREpoImpl>())),
      ],
      child: GetMaterialApp(
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimaryColor),
        home: const SplashView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
