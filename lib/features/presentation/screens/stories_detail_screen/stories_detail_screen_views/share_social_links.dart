import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareSocialLinks extends StatelessWidget {
  const ShareSocialLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor:
            MaterialStatePropertyAll(Colors.black26),
          ),
          icon: Image(
            height: 30.sp,
            width: 30.sp,
            image: const AssetImage(
              "assets/icons/ic_facebook.png",
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor:
            MaterialStatePropertyAll(Colors.black26),
          ),
          icon: Image(
            height: 30.sp,
            width: 30.sp,
            image: const AssetImage(
              "assets/icons/ic_twitter.png",
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor:
            MaterialStatePropertyAll(Colors.black26),
          ),
          icon: Image(
            height: 30.sp,
            width: 30.sp,
            image: const AssetImage(
              "assets/icons/ic_linkedin.png",
            ),
          ),
        ),
      ],
    );
  }
}
