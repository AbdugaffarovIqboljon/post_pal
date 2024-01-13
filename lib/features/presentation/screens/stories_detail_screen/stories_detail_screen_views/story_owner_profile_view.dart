import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../contributor_screen/contributor_screen.dart';

class StoryOwnerProfile extends StatelessWidget {
  const StoryOwnerProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ContributorScreen(),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundImage: const AssetImage(
          "assets/images/img_avatar.png",
        ),
        radius: 35.sp,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      title: Text(
        'Adi Saputra',
        style: TextStyle(
          color: const Color(0xFF061730),
          fontSize: 16.sp,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        'Product Designer',
        style: TextStyle(
          color: const Color(0xFF6D7E97),
          fontSize: 14.sp,
          fontFamily: 'Source Sans Pro',
        ),
      ),
      trailing: Container(
        width: 80.sp,
        height: 40.sp,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Color(0xFF3076E0),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            'Follow',
            style: TextStyle(
              color: const Color(0xFF3076E0),
              fontSize: 15.sp,
              fontFamily: 'Source Sans Pro',
            ),
          ),
        ),
      ),
    );
  }
}