import 'package:smartskin/widgets/app_bar/custom_app_bar.dart';
import 'package:smartskin/widgets/app_bar/appbar_title_searchview.dart';
import 'package:smartskin/widgets/custom_icon_button.dart';
import 'package:smartskin/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 20.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 31.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "Fresh black tea cream",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 32.h,
                  endIndent: 32.h,
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 31.h,
                  right: 15.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "Claudalie firming cashmere cream",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 32.h,
                  endIndent: 32.h,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "Inkey list retinol",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 32.h,
                  endIndent: 32.h,
                ),
              ),
              Spacer(),
              // _buildSeven(context),
            ],
          ),
        ),
        // floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "Search",
        controller: searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillPink,
      child: Column(
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 34.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "Q",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "W",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 34.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "E",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 33.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "R",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 34.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "T",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 33.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "Y",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 33.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "U",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 34.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "I",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "O",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 34.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "P",
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 34.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "A",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 33.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "S",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 33.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "D",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 34.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "F",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 33.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "G",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 34.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "H",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 33.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "J",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 33.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "K",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 34.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "L",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIconButton(
                height: 42.adaptSize,
                width: 42.adaptSize,
                padding: EdgeInsets.all(11.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 34.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "Z",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "X",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "C",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Container(
                        width: 35.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "V",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Container(
                        width: 33.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "B",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Container(
                        width: 33.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "N",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "M",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 91.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "123",
                  style: CustomTextStyles.bodyLargeBlack900_1,
                ),
              ),
              Container(
                width: 193.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "space",
                  style: CustomTextStyles.bodyLargeBlack900_1,
                ),
              ),
              Container(
                width: 91.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "return",
                  style: CustomTextStyles.bodyLargeBlack900_1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 42,
      width: 42,
      backgroundColor: theme.colorScheme.secondaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 21.0.v,
        width: 21.0.h,
      ),
    );
  }
}
