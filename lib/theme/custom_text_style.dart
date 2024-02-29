import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmallGray900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray900,
      );
  // Label text style
  static get labelLargeBlueA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleMediumRebondGrotesque =>
      theme.textTheme.titleMedium!.rebondGrotesque.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumRebondGrotesqueGray900 =>
      theme.textTheme.titleMedium!.rebondGrotesque.copyWith(
        color: appTheme.gray900.withOpacity(0.49),
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.49),
      );
  static get titleSmallJosefinSansOnPrimaryContainer =>
      theme.textTheme.titleSmall!.josefinSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallWhiteA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
      );
}

extension on TextStyle {
  TextStyle get rebondGrotesque {
    return copyWith(
      fontFamily: 'Rebond Grotesque',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }
}
