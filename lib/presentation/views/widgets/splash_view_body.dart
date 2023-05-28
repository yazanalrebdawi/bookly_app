import 'package:bookly_app/core/utils/asset.dart';
import 'package:bookly_app/features/home/peresentation/views/home_view.dart';
import 'package:bookly_app/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'constatnts/const.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // between 0 and 1
  late Animation<Offset> slidienAnimation;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initState() {
    slidingTextAnimation();
    NavigateToHome();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 2),
          child: Image.asset(AseetsData.logo, scale: 0.4),
        ),
        slidingText(slidienAnimation: slidienAnimation)
      ],
    );
  }

  void slidingTextAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidienAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: const Offset(0, 0))
            .animate(
      animationController,
    );
    animationController.forward();
  }
}

void NavigateToHome() {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: Ktransition);
    },
  );
}
