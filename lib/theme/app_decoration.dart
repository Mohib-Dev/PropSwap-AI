import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90014.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              14,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.only(
        bottomLeft: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBR10 => BorderRadius.only(
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
