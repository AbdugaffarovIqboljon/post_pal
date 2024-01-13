import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) onTap;
  final int bottomNavbarIndex;

  const BottomNavBar({
    super.key,
    required this.bottomNavbarIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavbarIndex,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Image(
            height: 21.sp,
            width: 21.sp,
            image: const AssetImage("assets/icons/ic_home.png"),
          ),
          label: "Home",
          activeIcon: Image(
            height: 21.sp,
            width: 21.sp,
            color: const Color(0xFF061730),
            image: const AssetImage("assets/icons/ic_home.png"),
          ),
        ),
        BottomNavigationBarItem(
          icon: Image(
            height: 22.sp,
            width: 22.sp,
            image: const AssetImage("assets/icons/ic_discovery.png"),
          ),
          label: "Explore",
          activeIcon: Image(
            height: 22.sp,
            width: 22.sp,
            color: const Color(0xFF061730),
            image: const AssetImage("assets/icons/ic_discovery.png"),
          ),
        ),
        BottomNavigationBarItem(
          icon: Image(
            height: 21.sp,
            width: 21.sp,
            image: const AssetImage("assets/icons/ic_bookmark_fill.png"),
          ),
          label: "Saved",
          activeIcon: Image(
            height: 21.sp,
            width: 21.sp,
            color: const Color(0xFF061730),
            image: const AssetImage("assets/icons/ic_bookmark_fill.png"),
          ),
        ),
        BottomNavigationBarItem(
          icon: Image(
            height: 26.sp,
            width: 26.sp,
            image: const AssetImage("assets/icons/ic_profile.png"),
          ),
          label: "Profile",
          activeIcon: Image(
            height: 26.sp,
            width: 26.sp,
            color: const Color(0xFF061730),
            image: const AssetImage("assets/icons/ic_profile.png"),
          ),
        ),
      ],
    );
  }
}