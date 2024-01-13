import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 10,
      endIndent: 10,
      color: Color(0xFFE6EBF1),
    );
  }
}