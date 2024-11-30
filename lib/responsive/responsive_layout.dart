import 'package:flutter/material.dart';

class Responsive_layout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const Responsive_layout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //web screen
          return webScreenLayout;
        }
        // mobile screen
        return mobileScreenLayout;
      },
    );
  }
}
