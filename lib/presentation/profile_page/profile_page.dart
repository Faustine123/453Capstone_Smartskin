import 'package:smartskin/widgets/app_bar/custom_app_bar.dart';
import 'package:smartskin/widgets/app_bar/appbar_leading_image.dart';
import 'package:smartskin/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Column(
              children: [
                SizedBox(height: 32.v),
                _buildOne(context),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 31.h,
                    vertical: 14.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Gabby",
                        style: CustomTextStyles.titleLargeMedium,
                      ),
                      SizedBox(height: 22.v),
                      _buildEight(context),
                      SizedBox(height: 18.v),
                      _buildCalendar(context),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SizedBox(
      height: 127.v,
      width: 329.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 112.adaptSize,
            width: 112.adaptSize,
            alignment: Alignment.bottomCenter,
          ),
          CustomAppBar(
            height: 29.v,
            leadingWidth: 60.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(
                left: 32.h,
                bottom: 1.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgVector,
                margin: EdgeInsets.symmetric(horizontal: 32.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePink100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 13.v),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Skin Type:",
                        style: CustomTextStyles.titleMediumffc3829e,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Oily-combination",
                        style: CustomTextStyles.bodyLargeff562135,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 46.h,
                  bottom: 15.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 26.v),
          Text(
            "Areas of Concern",
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Acne",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Texture",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Text(
                  "Large Pores",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 28.v),
          Text(
            "Tracked Ingredients ",
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 13.v),
          Text(
            "Fragrance",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 14.v),
          Text(
            "Drying Alcohols",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 15.v),
          Text(
            "Fragrant Essential Oils",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 28.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.outlineRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCalendar,
                    height: 90.adaptSize,
                    width: 90.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: Text(
                      "Schedule",
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.outlineRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 17.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGlobe,
                    height: 67.adaptSize,
                    width: 67.adaptSize,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "Community",
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
