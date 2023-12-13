import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../constants/style/text/text_style_constants.dart';

class AtomicTextField extends StatelessWidget {
  const AtomicTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.obscureText,
    required this.keyboardType,
    required this.icon,
  });

  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIconColor: Colors.grey,
        fillColor: Colors.white,
        filled: true,
        label: Text(label),
        labelStyle: TextStyleConstants.LABEL_STYLE,
        contentPadding: EdgeInsets.symmetric(
            horizontal: context.sized.dynamicWidth(.1),
            vertical: context.sized.dynamicHeight(.02)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        prefixIcon: Icon(
          icon,
          size: 20,
        ),
      ),
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
