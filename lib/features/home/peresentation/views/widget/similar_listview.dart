import 'package:flutter/cupertino.dart';

import 'custom_listview_item.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: const CustomListItem(
              imageUrl:
                  'https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=465%2Cq=70%2Csharpen=1%2Cwidth=1000/wp-content/uploads/international-cat-day1-scaled.jpg',
            ),
          );
        },
      ),
    );
  }
}
