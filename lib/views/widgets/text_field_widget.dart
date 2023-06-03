import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String label;
  Icon suffixIcon;
  Widget? prefixIcon;
  bool obscured;
  CustomTextField({
    super.key,
    this.controller,
    required this.label,
    required this.suffixIcon,
    this.obscured = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscured,
      decoration: InputDecoration(
        label: Text(label),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
