import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:halal_food_search/colors.dart';
import 'package:halal_food_search/screens/search_screen/components/custom_divider.dart';
import 'package:halal_food_search/screens/search_screen/components/location_picker.dart';
import 'package:halal_food_search/screens/search_screen/components/resturent_tile.dart';
import 'package:halal_food_search/screens/search_screen/components/settings_button.dart';
import 'package:halal_food_search/screens/search_screen/components/specials_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              title: const Text('Halal Food Search'),
              leading: IconButton(
                icon: const Icon(Icons.navigate_before),
                onPressed: () {},
              ),
              actions: [
                SettingsButton(
                  onPressed: () {},
                ),
              ],
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 10)),
            SliverToBoxAdapter(
              child: LocationPicker(
                onPressed: () {},
                city: 'Mumbai',
                country: 'INDIA',
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 20)),
            SliverToBoxAdapter(
              child: SearchBar(
                hintText: 'Search Food/Resturant',
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                trailing: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 20)),
            SliverToBoxAdapter(
              child: Text(
                'Specials Near You',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: AppColors.cyan,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 20)),
            SliverToBoxAdapter(
              child: CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (context, i, j) {
                    return const SpecialsCard();
                  },
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                  )),
            ),
            const SliverToBoxAdapter(
              child: CustomDivider(
                title: 'Favorites',
                height: 20,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.7,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(
                  9,
                  (index) => const GridTile(child: ResturentTile()),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  '+ More',
                  style: TextStyle(color: AppColors.cyan),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomDivider(
                title: 'Suggested',
                height: 20,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.7,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(
                  9,
                  (index) => const GridTile(child: ResturentTile()),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  '+ More',
                  style: TextStyle(color: AppColors.cyan),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          gradient: const LinearGradient(
            colors: [
              AppColors.background,
              AppColors.primary,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          useLegacyColorScheme: false,
          currentIndex: 0,
          unselectedIconTheme: const IconThemeData(color: AppColors.cyan),
          selectedIconTheme: const IconThemeData(color: AppColors.cyan),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
