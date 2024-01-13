import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserStats extends StatelessWidget {
  final String storiesCount;
  final String followersCount;
  final String followingCount;

  const UserStats({
    super.key,
    required this.storiesCount,
    required this.followersCount,
    required this.followingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              storiesCount,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Stories",
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF6E7F98),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              followersCount,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Followers",
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF6E7F98),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              followingCount,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Following",
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF6E7F98),
              ),
            ),
          ],
        ),
      ],
    );
  }
}