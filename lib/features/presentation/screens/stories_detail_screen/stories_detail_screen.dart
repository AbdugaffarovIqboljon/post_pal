import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post_pal/features/presentation/screens/stories_detail_screen/stories_detail_screen_views/comments_list_tile.dart';
import 'package:post_pal/features/presentation/screens/stories_detail_screen/stories_detail_screen_views/custom_sliver_appbar.dart';
import 'package:post_pal/features/presentation/screens/stories_detail_screen/stories_detail_screen_views/share_social_links.dart';
import 'package:post_pal/features/presentation/screens/stories_detail_screen/stories_detail_screen_views/story_owner_profile_view.dart';

class StoriesDetailScreen extends StatefulWidget {
  const StoriesDetailScreen({super.key});

  @override
  State<StoriesDetailScreen> createState() => _StoriesDetailScreenState();
}

class _StoriesDetailScreenState extends State<StoriesDetailScreen> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: true,
              (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 40,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// #Post Title
                          Text(
                            "How to Building a Successful Design System.",
                            style: TextStyle(
                              color: const Color(0xFF061730),
                              fontSize: 22.sp,
                              fontFamily: 'Source Serif Pro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 40),

                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "The designers did their work primarily in Sketch. They translated their vision of the product into static designs. The developers then wrote HTML, CSS, Javascript and PHP to convert these static designs into a working product. One of the biggest ambitions inside the company was to find a way to make this process less time consuming as the work was basically done twice. When we started to tackle creating our system in Figma, we took a step back to re-evaluate what we’d done in Sketch, questioning the decisions we’d made about layout, visual hierarchy, and naming convention, to name a few. We realized that in order to create a strong foundation in these new libraries.",
                                  style: TextStyle(
                                    color: const Color(0xFF3E4B5E),
                                    fontSize: 16.sp,
                                    fontFamily: 'Charter',
                                    height: 1.45.sp,
                                  ),
                                ),
                                TextSpan(
                                  text: "\n\nConclusion:",
                                  style: TextStyle(
                                    color: const Color(0xFF061730),
                                    fontSize: 20.sp,
                                    fontFamily: 'Source Serif Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "\n\nA product is only ever as good as its UX. You can have the most innovative technology, but if it isn’t user-friendly, it will struggle to reach mainstream adoption. Products like the iPod and the iPhone would never have become so popular based on the technology alone; what really sealed the deal is the fact that they have great UX.",
                                  style: TextStyle(
                                    color: const Color(0xFF3E4B5E),
                                    fontSize: 16.sp,
                                    fontFamily: 'Charter',
                                    height: 1.45,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20.sp),

                          const Divider(
                            color: Colors.black45,
                          ),

                          SizedBox(height: 20.sp),

                          const StoryOwnerProfile(),
                          SizedBox(height: 50.sp),
                          Center(
                            child: Text(
                              'Like this article? share it now!',
                              style: TextStyle(
                                color: const Color(0xFF6D7E97),
                                fontSize: 18.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 1,
                              ),
                            ),
                          ),

                          SizedBox(height: 20.sp),
                          const ShareSocialLinks(),

                          SizedBox(height: 30.sp),
                          const Divider(
                            color: Colors.black45,
                          ),
                          SizedBox(height: 20.sp),
                          Text(
                            "24 Responses",
                            style: TextStyle(
                              color: const Color(0xFF061730),
                              fontSize: 22.sp,
                              fontFamily: 'Source Serif Pro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 20.sp),
                          TextField(
                            maxLines: null,
                            decoration: InputDecoration(
                              hintText: "Write your response",
                              hintStyle: TextStyle(
                                color: const Color(0xFFA0B1C9),
                                fontSize: 16.sp,
                                fontFamily: 'Source Sans Pro',
                              ),
                              suffixIcon: IconButton(
                                color: Colors.blue.shade500,
                                onPressed: () {},
                                icon: const Icon(Icons.send),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.sp),
                          const CommentListTile(
                            imagePath: "assets/images/img_user_avatar.png",
                            username: "Bambang",
                            userComment:
                                "Very inspiring article, thank you 👏🏻",
                            commentDate: "6m ago",
                          ),
                          SizedBox(height: 20.sp),
                          const CommentListTile(
                            imagePath: "assets/images/img_comment.png",
                            username: "Ceci Romanov",
                            userComment:
                                "You are rock 🤘🏻 great post!",
                            commentDate: "1h ago",
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
