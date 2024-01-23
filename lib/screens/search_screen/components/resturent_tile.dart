import 'package:flutter/material.dart';
import 'package:halal_food_search/colors.dart';
import 'package:halal_food_search/screens/search_screen/components/gradient_container.dart';

class ResturentTile extends StatelessWidget {
  final Widget? child;
  final String? title;
  final String? location;
  const ResturentTile({super.key, this.child, this.title, this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: GradientContainer(child: child)),
        const SizedBox(height: 10),
        Text(
          title ?? "Resturant Name",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.cyan,
              ),
        ),
        Text(
          location ?? "Location",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.cyan,
              ),
        ),
      ],
    );
  }
}
