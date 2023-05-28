import 'package:bookly_app/features/home/manger/featured_book_cubit/fetured_books_cubit.dart';
import 'package:bookly_app/features/home/peresentation/views/widget/custom_error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_listview_item.dart';
import 'custom_loading.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeturedBooksCubit, FeturedBooksState>(
      builder: (context, state) {
        if (state is FeturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: CustomListItem(imageUrl: state.books[index].picture),
                );
              },
            ),
          );
        } else if (state is FeturedBooksFailure) {
          return CustomError(error: state.errorMessage);
        } else {
          return CustomLoading();
        }
      },
    );
  }
}
