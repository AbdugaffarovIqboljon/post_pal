import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoriesListTile extends StatelessWidget {
  const StoriesListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFE6EBF1),
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment(-0.78.sp, 0.67.sp),
              children: [
                const Image(
                  image: AssetImage(
                    "assets/images/img_post.png",
                  ),
                ),
                Container(
                  width: 80.sp,
                  height: 24.sp,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 1,
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Design',
                      style: TextStyle(
                        color: const Color(0xFF3076E0),
                        fontSize: 12.sp,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Understanding of Processed Food',
                style: TextStyle(
                  color: const Color(0xFF061730),
                  fontSize: 19.sp,
                  fontFamily: 'Source Serif Pro',
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'There is ipsum dot amet sim color awesome',
                style: TextStyle(
                  color: const Color(0xFF6D7E97),
                  fontSize: 15.sp,
                  fontFamily: 'Source Sans Pro',
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
              child: Row(
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    color: const Color(0xFFA0B1C9),
                    size: 18.sp,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "2 hours ago",
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
                    "89",
                    style: TextStyle(
                      color: const Color(0xFFA0B1C9),
                      fontSize: 13.sp,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}