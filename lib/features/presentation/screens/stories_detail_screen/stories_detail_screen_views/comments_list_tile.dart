import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentListTile extends StatelessWidget {
  final String imagePath;
  final String username;
  final String userComment;
  final String commentDate;

  const CommentListTile({
    super.key,
    required this.imagePath,
    required this.username,
    required this.userComment,
    required this.commentDate,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          imagePath,
        ),
        radius: 20.sp,
      ),
      title: Text(
        username,
        style: TextStyle(
          color: const Color(0xFF061730),
          fontSize: 16.5.sp,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userComment,
            style: TextStyle(
              color: const Color(0xFF6D7E97),
              fontSize: 14.5.sp,
              fontFamily: 'Source Sans Pro',
            ),
          ),
          Row(
            children: [
              Text(
                commentDate,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              SizedBox(width: 15.sp),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Replay",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12.sp,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
