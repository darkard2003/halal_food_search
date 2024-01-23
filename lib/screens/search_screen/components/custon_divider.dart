import 'package:flutter/material.dart';
import 'package:halal_food_search/colors.dart';

class CustomDivider extends StatelessWidget {
  final String title;
  final Color color;
  final double height;
  const CustomDivider({
    super.key,
    required this.title,
    this.color = AppColors.lightGreen,
    this.height = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 2,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
