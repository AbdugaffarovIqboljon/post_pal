import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'contributor_screen_views/message_and_follow_button.dart';
import 'contributor_screen_views/stories_list_tile.dart';
import 'contributor_screen_views/user_stats.dart';

class ContributorScreen extends StatefulWidget {
  const ContributorScreen({super.key});

  @override
  State<ContributorScreen> createState() => _ContributorScreenState();
}

class _ContributorScreenState extends State<ContributorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// #Header Profile
            Stack(
              alignment: const Alignment(0.9, 0.5),
              children: [
                const Image(
                  image: AssetImage("assets/images/img_bg_patern.png"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Adi Saputra",
                          style: TextStyle(
                            fontSize: 28.sp,
                            color: const Color(0xFF061730),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Product Designer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6E7F98),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 1.1.sp,
                  child: const Image(
                    image: AssetImage("assets/images/img_avatar.png"),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.sp),

            /// #Sub Stats
            const UserStats(
              storiesCount: '89',
              followersCount: '2124',
              followingCount: '160',
            ),

            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MessageAndFollowButton(
                  text: "Follow",
                  textColor: Colors.white,
                  color: Color(0xFF3076E0),
                ),
                MessageAndFollowButton(
                  text: "Message",
                  textColor: Color(0xFF3177E0),
                ),
              ],
            ),
            SizedBox(height: 30.sp),

            const Divider(color: Color(0xFFE6EBF1)),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Stories",
                  style: TextStyle(
                    color: const Color(0xFF061730),
                    fontSize: 21.sp,
                    fontFamily: 'Source Serif Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image(
                    height: 20.sp,
                    width: 20.sp,
                    image: const AssetImage("assets/icons/ic_grid_big.png"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const StoriesListTile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


