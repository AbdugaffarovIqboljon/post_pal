import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSliverAppBar extends StatefulWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      floating: true,
      pinned: true,
      forceMaterialTransparency: true,
      expandedHeight: 280.sp,
      leading: IconButton(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(35.sp, 35.sp),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            Colors.white24,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Image(
          height: 30.sp,
          width: 30.sp,
          image: const AssetImage("assets/icons/ic_back_white.png"),
        ),
      ),
      actions: [
        IconButton(
          style: ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(35.sp, 35.sp)),
            backgroundColor: const MaterialStatePropertyAll(
              Colors.white24,
            ),
          ),
          onPressed: () {
            _isTapped = !_isTapped;
            setState(() {});
          },
          icon: _isTapped == false
              ? Image(
            height: 20.sp,
            width: 20.sp,
            image: const AssetImage("assets/icons/ic_bookmark.png"),
          )
              : Image(
            height: 20.sp,
            width: 20.sp,
            color: Colors.deepPurple.shade50,
            image: const AssetImage(
              "assets/icons/ic_bookmark_fill.png",
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
      flexibleSpace: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: Image(
          fit: BoxFit.cover,
          height: 310.sp,
          image: const AssetImage("assets/images/img_post.png"),
        ),
      ),
    );
  }
}
