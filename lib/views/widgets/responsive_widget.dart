import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget bigScreen;

  ResponsiveWidget({super.key, required this.mobile, required this.bigScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return bigScreen;
        } else {
          return mobile;
        }
      },
    );
  }
}
