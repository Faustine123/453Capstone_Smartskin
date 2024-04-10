import 'package:smartskin/widgets/app_bar/custom_app_bar.dart';
import 'package:smartskin/widgets/app_bar/appbar_title.dart';
import 'package:smartskin/widgets/custom_text_form_field.dart';
import 'widgets/home_item_widget.dart';
import 'package:smartskin/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController checkboxController = TextEditingController();

  TextEditingController checkboxController1 = TextEditingController();

  TextEditingController checkboxController2 = TextEditingController();

  TextEditingController checkboxController3 = TextEditingController();

  bool moistuizer = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(context),
          body: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 31.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4.v),
                  _buildNineteen(context),
                  SizedBox(height: 20.v),
                  Text(
                    "Your daily routine",
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                  SizedBox(height: 11.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 19.v,
                              width: 25.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 4.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "A.M.",
                                style: CustomTextStyles.titleLargeMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildCheckbox(context),
                      SizedBox(height: 10.v),
                      _buildCheckbox1(context),
                      SizedBox(height: 10.v),
                      _buildCheckbox2(context),
                      SizedBox(height: 10.v),
                      _buildCheckbox3(context),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMobile,
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                bottom: 3.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: Text(
                                "P.M.",
                                style: CustomTextStyles.titleLargeMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildHome(context),
                    ],
                  ),
                  SizedBox(height: 10.v),
                  _buildMoistuizer(context),
                ],
              ),
            ),
          )),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Welcome, Gabby!",
        margin: EdgeInsets.only(left: 31.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(19.h),
      decoration: AppDecoration.outlinePink.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 230.h,
              margin: EdgeInsets.only(top: 3.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Today’s Tip:",
                      style: CustomTextStyles.titleMediumffc3829e,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text:
                          "Stay hydrated! Water improves your skin’s elasticity and tone",
                      style: CustomTextStyles.bodyLargeff56213518,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 40.v,
            width: 28.h,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 26.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckbox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: checkboxController,
        hintText: "Cleanser",
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 6.v, 19.h, 5.v),
          child: CustomImageView(
            onTap: () => {
              print('CustomImageView tap'),
            },
            imagePath: ImageConstant.imgCheckbox,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckbox1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: checkboxController1,
        hintText: "Vitamin C",
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 6.v, 19.h, 5.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckbox,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckbox2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: checkboxController2,
        hintText: "Moisturizer",
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 6.v, 19.h, 5.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckbox,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckbox3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: checkboxController3,
        hintText: "Sunscreen",
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 6.v, 19.h, 5.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckbox,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return HomeItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMoistuizer(BuildContext context) {
    return CustomCheckboxButton(
      width: 329.h,
      text: "Moistuizer",
      value: moistuizer,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 7.v,
      ),
      isRightCheck: true,
      onChange: (value) {
        moistuizer = value;
      },
    );
  }
}
