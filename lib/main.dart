import 'package:flutter/material.dart';
import 'package:halal_food_search/colors.dart';
import 'package:halal_food_search/screens/search_screen/scarch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halal Food Search',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.dark,
          background: AppColors.background,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.darkGreen,
          titleTextStyle: TextStyle(
            color: AppColors.darkGreen,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SearchScreen(),
      },
      initialRoute: '/',
    );
  }
}
