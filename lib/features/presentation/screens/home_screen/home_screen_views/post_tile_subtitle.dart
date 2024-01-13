import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostTileSubtitle extends StatelessWidget {
  final String postDate;
  final String commentCount;

  const PostTileSubtitle({
    super.key,
    required this.postDate,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time_outlined,
          color: const Color(0xFFA0B1C9),
          size: 18.sp,
        ),
        const SizedBox(width: 10),
        Text(
          postDate,
          style: TextStyle(
            color: const Color(0xFFA0B1C9),
            fontSize: 13.sp,
            fontFamily: 'Source Sans Pro',
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: Image(
            height: 16.sp,
            width: 16.sp,
            image: const AssetImage("assets/icons/ic_chat.png"),
          ),
        ),
        Text(
          commentCount,
          style: TextStyle(
            color: const Color(0xFFA0B1C9),
            fontSize: 13.sp,
            fontFamily: 'Source Sans Pro',
          ),
        ),
      ],
    );
  }
}
