import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: Text(
              "Cleanser",
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckbox,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }
}
