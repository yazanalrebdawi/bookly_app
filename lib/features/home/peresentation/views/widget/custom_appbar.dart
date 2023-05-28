import 'package:bookly_app/features/search/presentation/serch_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/asset.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 10,
        top: 40,
      ),
      child: Row(
        children: [
          Image.asset(
            AseetsData.logo,
            height: 25,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(() => SearchView());
            },
            icon: const Icon(
              Icons.search,
              size: 26,
            ),
          )
        ],
      ),
    );
  }
}
