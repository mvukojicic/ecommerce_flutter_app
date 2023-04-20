import 'package:ecommerce_app/shared/colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder outlineBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: CommerceColors.gradientStart,
    ),
    borderRadius: BorderRadius.circular(50),
  );
}
