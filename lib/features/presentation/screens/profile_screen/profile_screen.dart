import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post_pal/features/presentation/screens/profile_screen/profile_screen_views/profile_list_tile.dart';
import 'package:post_pal/features/presentation/screens/profile_screen/profile_screen_views/profile_tile_divider.dart';

import '../contributor_screen/contributor_screen_views/user_stats.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          /// #Header Profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Stack(
              alignment: const Alignment(1, 0.3),
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
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: Image(
                            height: 28.sp,
                            width: 28.sp,
                            image: const AssetImage(
                              "assets/icons/ic_edit_box.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(height: 10),
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
                SizedBox(width: 35.sp),
                Transform.scale(
                  scale: 1.15.sp,
                  child: const Image(
                    image: AssetImage("assets/images/img_avatar.png"),
                  ),
                ),
              ],
            ),
          ),

          /// #Sub Profile Stats
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: UserStats(
              storiesCount: "8",
              followersCount: "212",
              followingCount: "189",
            ),
          ),

          ListView(
            shrinkWrap: true,
            children: const [
              CustomDivider(),
              ProfileListTile(
                imagePath: "assets/icons/ic_last_read.png",
                text: "Last Read",
              ),
              CustomDivider(),
              ProfileListTile(
                imagePath: "assets/icons/ic_draft_stories.png",
                text: "Stories Draft",
              ),
              CustomDivider(),
              ProfileListTile(
                imagePath: "assets/icons/ic_help_center.png",
                text: "Help Center",
              ),
              CustomDivider(),
              ProfileListTile(
                imagePath: "assets/icons/ic_rate.png",
                text: "Rate Us",
              ),
              CustomDivider(),
              ProfileListTile(
                imagePath: "assets/icons/ic_settings.png",
                text: "Settings",
              ),
              CustomDivider(),
              ProfileListTile(
                imagePath: "assets/icons/ic_signout.png",
                text: "Sign Out",
              ),
              CustomDivider(),
            ],
          ),
        ],
      ),
    );
  }
}
