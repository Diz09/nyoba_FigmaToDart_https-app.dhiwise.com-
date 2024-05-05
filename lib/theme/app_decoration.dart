import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
// Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: appTheme.orange100,
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder147 => BorderRadius.circular(
        147.h,
      );
  static BorderRadius get roundedBorder73 => BorderRadius.circular(
        73.h,
      );
}
