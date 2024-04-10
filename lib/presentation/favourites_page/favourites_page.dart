import 'package:smartskin/widgets/custom_search_view.dart';
import 'widgets/favourites_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FavouritesPage extends StatelessWidget {
  FavouritesPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.red50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 35.v),
          decoration: AppDecoration.fillRed,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                    borderDecoration:
                        SearchViewStyleHelper.fillOnPrimaryContainer,
                    fillColor: theme.colorScheme.onPrimaryContainer,
                    autofocus: false,
                  ),
                ),
                SizedBox(height: 37.v),
                _buildFavourites(context),
                SizedBox(height: 40.v),
                _buildTheOrdinary(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFavourites(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 215.5.v,
          crossAxisCount: 2,
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 20.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return FavouritesItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTheOrdinary(BuildContext context) {
    return SizedBox(
      height: 211.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(left: 32.h),
              color: theme.colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.pink100,
                  width: 1.h,
                ),
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Container(
                height: 150.v,
                width: 155.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.outlinePink1001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTheOrdinary,
                      height: 105.adaptSize,
                      width: 105.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoritePink100,
                      height: 19.v,
                      width: 20.h,
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(right: 31.h),
              color: theme.colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.pink100,
                  width: 1.h,
                ),
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Container(
                height: 150.v,
                width: 155.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlinePink1001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBobbiBrown,
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      alignment: Alignment.bottomCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoritePink100,
                      height: 19.v,
                      width: 20.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 10.v),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 48.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 109.h,
                    margin: EdgeInsets.only(top: 40.v),
                    child: Text(
                      "100% Organic \nCold-Pressed Rose \nHip Seed Oil",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Container(
                    width: 122.h,
                    margin: EdgeInsets.only(
                      left: 59.h,
                      top: 40.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "Mini Vitamin Enriched \nFace Base Primer \nMoisturizer",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
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
