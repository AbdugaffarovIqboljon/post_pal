import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatefulWidget {
  final String text;
  final int currentIndex;

  const CategoryWidget({
    Key? key,
    required this.text,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isTapped = !isTapped;
        setState(() {});
      },
      child: Container(
        width: 100.sp,
        height: 33.sp,
        decoration: ShapeDecoration(
          color: const Color(0xFFEBEFF5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
            side: isTapped
                ? const BorderSide(color: Colors.blueGrey)
                : BorderSide.none,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
