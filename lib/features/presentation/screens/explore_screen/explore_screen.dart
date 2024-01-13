import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Explore",
          style: TextStyle(
            color: const Color(0xFF061730),
            fontSize: 21.sp,
            fontFamily: 'Source Serif Pro',
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 60.sp),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: const Color(0xFFEFF2F7),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search Stories",
                hintStyle: TextStyle(
                  color: const Color(0xFFA0B1C9),
                  fontSize: 16.sp,
                  fontFamily: 'Source Sans Pro',
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image(
                      height: 25.sp,
                      width: 25.sp,
                      image: const AssetImage("assets/icons/ic_search.png"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        centerTitle: false,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 35.sp),

          /// #Header Quotes
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 370.sp,
              height: 291.sp,
              decoration: const BoxDecoration(
                color: Color(0xFF225FB9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Stack(
                alignment: const Alignment(0, -0.85),
                children: [
                  Align(
                    alignment: const Alignment(-0.77, 0.8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF1B84B),
                        fixedSize: Size(140.sp, 40.sp),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Share Quotes',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Source Sans Pro',
                          color: const Color(0xFF061730),
                          fontWeight: FontWeight.w600,
                          height: 0.15,
                          letterSpacing: 0.14,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Container(
                        width: 36.sp,
                        height: 36.sp,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                        child: Text(
                          '“',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF225FB9),
                            fontSize: 36.sp,
                            fontFamily: 'Source Serif Pro',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Spacer(flex: 8),
                      Text(
                        '~ Steve Jobs',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: const Alignment(0, -0.2),
                      child: Text(
                        'Design is not just what it looks like and feels like. Design is how it works.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21.sp,
                          fontFamily: 'Source Serif Pro',
                          fontWeight: FontWeight.w600,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image(
                      height: 180.sp,
                      image: const AssetImage(
                          "assets/images/img_quote_abstract.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 25.sp),

          /// #HeaderText Your Topics
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Topics',
                  style: TextStyle(
                    color: const Color(0xFF061730),
                    fontSize: 21.sp,
                    fontFamily: 'Source Serif Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add more',
                    style: TextStyle(
                      color: const Color(0xFF3376D9),
                      fontSize: 15.sp,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// #Topics Builder
          SizedBox(
            height: 155.sp,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Image(
                      image: AssetImage(
                        "assets/images/img_topics_tech.jpg",
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );
  }
}
