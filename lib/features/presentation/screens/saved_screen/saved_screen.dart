import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen/home_screen_views/post_tile_subtitle.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "36 Reading List",
          style: TextStyle(
            fontSize: 21.sp,
            color: const Color(0xFF061730),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image(
              height: 21.sp,
              width: 21.sp,
              image: const AssetImage("assets/icons/ic_hamburger.png"),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image(
              height: 17.sp,
              width: 17.sp,
              image: const AssetImage("assets/icons/ic_grid_big.png"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 15.sp),
              horizontalTitleGap: 30.sp,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Food",
                    style: TextStyle(
                      color: const Color(0xFF29B86B),
                      fontSize: 13.sp,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.12,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Organic Food is Better for Your Health',
                    style: TextStyle(
                      color: const Color(0xFF061730),
                      fontSize: 18.sp,
                      fontFamily: 'Source Serif Pro',
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'There is ipsum dot amet sim comnenc',
                    style: TextStyle(
                      color: const Color(0xFF6D7E97),
                      fontSize: 14.sp,
                      fontFamily: 'Source Sans Pro',
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              subtitle: const PostTileSubtitle(
                postDate: "2 weeks ago",
                commentCount: "32",
              ),
              trailing: Transform.scale(
                scale: 1.45.sp,
                child: const Image(
                  image: AssetImage("assets/images/img_post_trailing.png"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
