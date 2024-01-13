import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post_pal/features/presentation/screens/home_screen/home_screen_views/post_tile_subtitle.dart';

import '../../stories_detail_screen/stories_detail_screen.dart';

class PostsListTile extends StatelessWidget {
  const PostsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void navigateToStoriesDetailScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const StoriesDetailScreen(),
        ),
      );
    }

    return ListTile(
      horizontalTitleGap: 25.sp,
      onTap: navigateToStoriesDetailScreen,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            "Design",
            style: TextStyle(
              color: const Color(0xFF3076E0),
              fontSize: 12.sp,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: 0.12,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Building a Successful Design System',
            style: TextStyle(
              color: const Color(0xFF061730),
              fontSize: 18.sp,
              fontFamily: 'Source Serif Pro',
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
          const SizedBox(height: 10),
          Text(
            'There is ipsum dot amet sim',
            style: TextStyle(
              color: const Color(0xFF6D7E97),
              fontSize: 14.5.sp,
              fontFamily: 'Source Sans Pro',
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 20),
        ],
      ),
      trailing: Transform.scale(
        scale: 1.8.sp,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
          child: const Image(
            image: AssetImage(
              "assets/images/img_story_cover.png",
            ),
          ),
        ),
      ),
      subtitle: const PostTileSubtitle(
        postDate: "3h ago",
        commentCount: "128",
      ),
    );
  }
}

