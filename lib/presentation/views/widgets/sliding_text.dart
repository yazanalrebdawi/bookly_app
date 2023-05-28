import 'package:flutter/cupertino.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    Key? key,
    required this.slidienAnimation,
  }) : super(key: key);

  final Animation<Offset> slidienAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidienAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidienAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
