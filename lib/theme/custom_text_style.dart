import 'package:flutter/material.dart';
import 'package:smartskin/core/utils/size_utils.dart';
import 'package:smartskin/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeLightblueA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
      );
  static get bodyLargeff562135 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF562135),
      );
  static get bodyLargeff56213518 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF562135),
        fontSize: 18.fSize,
      );
  // Title text style
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleMediumff00000018 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
        fontSize: 18.fSize,
      );
  static get titleMediumffc3829e => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFC3829E),
        fontSize: 18.fSize,
      );
  static get titleMediumffc3829e_1 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFC3829E),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
