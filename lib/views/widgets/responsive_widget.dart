import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  Widget mobile;
  Widget bigScreen;

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
