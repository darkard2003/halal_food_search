import 'package:flutter/material.dart';
import 'package:halal_food_search/colors.dart';
import 'package:halal_food_search/screens/search_screen/components/gradient_container.dart';

class SpecialsCard extends StatelessWidget {
  final Widget? child;
  final String? title;
  final String? location;
  final color = AppColors.cyan;
  const SpecialsCard({
    super.key,
    this.child,
    this.title,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientContainer(child: child),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "Resturant Name",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
              ),
              Text(
                location ?? "Location",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: color,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
