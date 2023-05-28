import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/peresentation/views/widget/custom_listview_item.dart';
import 'package:bookly_app/features/home/peresentation/views/widget/similar_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../core/widgets/book_action.dart';
import '../../../../../core/widgets/button_collection.dart';
import '../../../../../core/widgets/custom_app_bar_details.dart';
import 'book_rataing.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                CustomBookDetailsAppBAr(),
                SizedBox(
                    height: 230,
                    width: 200,
                    child: CustomListItem(
                      imageUrl:
                          'https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=465%2Cq=70%2Csharpen=1%2Cwidth=1000/wp-content/uploads/international-cat-day1-scaled.jpg',
                    )),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'the jungle book ',
                  style: styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'data',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white.withOpacity(.7),
                      fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Rating(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '(200)',
                      style: TextStyle(color: Colors.white.withOpacity(.7)),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ButtonColeection(),
                Expanded(
                    child: SizedBox(
                  height: 10,
                )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'you can Also see',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SimilarListView()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
