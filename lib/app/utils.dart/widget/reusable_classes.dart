import 'package:flutter/material.dart';

import '../color_lib.dart';

class ReusableTextFieldDecoration {
  static InputDecoration getDecoration({
    String? hintText,
    IconData? prefixIcon,
    IconButton? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: suffixIcon,
      fillColor: const Color(0xffF2F4F7),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Color(0xFFD7D8DA)),
      ),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorsLib.primary)),
      contentPadding: EdgeInsets.symmetric(vertical: 24),
    );
  }
}
