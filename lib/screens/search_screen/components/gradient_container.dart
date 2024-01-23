import 'package:flutter/material.dart';
import 'package:halal_food_search/colors.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.borderColor = AppColors.cyan,
    this.child,
  });

  final Color borderColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      foregroundDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          colors: [
            AppColors.background,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}
