import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Widget child;
  Function()? onPressed;
  BorderRadius? borderRadius;
  EdgeInsets padding;
  CustomButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.borderRadius,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: OutlinedButton(
        child: child,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius!,
          ),
          padding: padding,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

extension CustomBorderedButton on CustomButton {
  addBorderRadius(BorderRadius borderRadius) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: child,
    );
  }
}
