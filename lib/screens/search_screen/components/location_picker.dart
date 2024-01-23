import 'package:flutter/material.dart';
import 'package:halal_food_search/colors.dart';

final class LocationPicker extends StatelessWidget {
  final Function() onPressed;
  final String city;
  final String country;
  final color = AppColors.primary;
  const LocationPicker({
    super.key,
    required this.onPressed,
    required this.city,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 5,
        ),
        Icon(
          Icons.location_on,
          color: color,
        ),
        const SizedBox(width: 3),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              city,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: color,
                  ),
            ),
            Text(
              country,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.arrow_drop_down,
            color: color,
            size: 30,
          ),
        ),
      ],
    );
  }
}
