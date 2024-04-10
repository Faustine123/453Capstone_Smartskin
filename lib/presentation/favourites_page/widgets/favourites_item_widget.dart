import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore: must_be_immutable
class FavouritesItemWidget extends StatelessWidget {
  const FavouritesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 155.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlinePink1001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFavoritePink100,
                height: 19.v,
                width: 20.h,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 4.v),
              CustomImageView(
                imagePath: ImageConstant.imgClinique,
                height: 95.adaptSize,
                width: 95.adaptSize,
              ),
              SizedBox(height: 6.v),
            ],
          ),
        ),
        SizedBox(height: 13.v),
        SizedBox(
          width: 141.h,
          child: Text(
            "Take The Day Off™ \nCharcoal Cleansing Balm \nMakeup Remover",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
