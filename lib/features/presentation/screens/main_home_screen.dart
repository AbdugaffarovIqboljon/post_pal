import 'package:flutter/material.dart';
import 'package:post_pal/features/presentation/screens/profile_screen/profile_screen.dart';
import 'package:post_pal/features/presentation/screens/saved_screen/saved_screen.dart';

import 'explore_screen/explore_screen.dart';
import 'home_screen/home_screen.dart';
import 'home_screen/home_screen_views/bottom_navbar.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// #Body
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: const [
          HomeScreen(),
          ExploreScreen(),
          SavedScreen(),
          ProfileScreen(),
        ],
      ),

      bottomNavigationBar: BottomNavBar(
        bottomNavbarIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          pageController.jumpToPage(currentIndex);
          setState(() {});
        },
      ),
    );
  }
}
