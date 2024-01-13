import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileListTile extends StatelessWidget {
  final String imagePath;
  final String text;

  const ProfileListTile({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 18.0),
      onTap: () {},
      leading: Image(
        height: 22.sp,
        width: 22.sp,
        image: AssetImage(imagePath),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 15.sp,
          color: const Color(0xFF061730),
        ),
      ),
    );
  }
}
