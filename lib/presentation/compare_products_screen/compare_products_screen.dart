import 'package:smartskin/presentation/home_page/home_page.dart';
import 'package:smartskin/presentation/search_page/search_page.dart';
import 'package:smartskin/presentation/favourites_page/favourites_page.dart';
import 'package:smartskin/presentation/profile_page/profile_page.dart';
import 'package:smartskin/widgets/app_bar/custom_app_bar.dart';
import 'package:smartskin/widgets/app_bar/appbar_leading_image.dart';
import 'package:smartskin/widgets/app_bar/appbar_subtitle.dart';
import 'package:smartskin/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CompareProductsScreen extends StatelessWidget {
  CompareProductsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(children: [
                  Text("Compare Products",
                      style: CustomTextStyles.titleLargeMedium),
                  SizedBox(height: 12.v),
                  _buildSeventy(context),
                  SizedBox(height: 28.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 37.h),
                          child: Row(children: [
                            Text("Cream", style: theme.textTheme.titleMedium),
                            Padding(
                                padding: EdgeInsets.only(left: 51.h),
                                child: Text("Texture",
                                    style: theme.textTheme.bodyLarge))
                          ]))),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("Daily",
                                    style: theme.textTheme.titleMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 70.h),
                                child: Text("Use",
                                    style: theme.textTheme.bodyLarge))
                          ]))),
                  SizedBox(height: 22.v),
                  Divider(),
                  SizedBox(height: 21.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 53.h),
                          child: Row(children: [
                            Text("All", style: theme.textTheme.titleMedium),
                            Padding(
                                padding: EdgeInsets.only(left: 58.h),
                                child: Text("Skin-type",
                                    style: theme.textTheme.bodyLarge))
                          ]))),
                  SizedBox(height: 27.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 50.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 6.v, bottom: 12.v),
                                    child: Text("Yes",
                                        style: theme.textTheme.titleMedium)),
                                Container(
                                    width: 69.h,
                                    margin: EdgeInsets.only(left: 53.h),
                                    child: Text("Sensitive \nSkin",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyLarge))
                              ]))),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 52.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("No",
                                    style: theme.textTheme.titleMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 69.h),
                                child: Text("Vegan",
                                    style: theme.textTheme.bodyLarge))
                          ]))),
                  SizedBox(height: 23.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 49.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("Yes",
                                    style: theme.textTheme.titleMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 54.h),
                                child: Text("Anti-Aging",
                                    style: theme.textTheme.bodyLarge))
                          ]))),
                  SizedBox(height: 19.v),
                  Divider(),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 51.h),
                          child: Row(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 14.v, bottom: 7.v),
                                child: Text("No",
                                    style: theme.textTheme.titleMedium)),
                            Container(
                                width: 103.h,
                                margin: EdgeInsets.only(left: 47.h),
                                child: Text("Non-\ncomedogenic",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyLarge))
                          ]))),
                  SizedBox(height: 11.v),
                  Divider(),
                  SizedBox(height: 79.v),
                  Divider()
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 23.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title:
            AppbarSubtitle(text: "Back", margin: EdgeInsets.only(left: 5.h)));
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 6.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 135.adaptSize,
              width: 135.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v),
              decoration: AppDecoration.outlinePink100
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder67),
              child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle31,
                  height: 83.v,
                  width: 93.h,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.center)),
          Container(
              height: 135.adaptSize,
              width: 135.adaptSize,
              padding: EdgeInsets.all(46.h),
              decoration: AppDecoration.outlinePink100
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder67),
              child: CustomImageView(
                  imagePath: ImageConstant.imgRewind,
                  height: 39.adaptSize,
                  width: 39.adaptSize,
                  alignment: Alignment.topCenter))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Searchonprimary:
        return AppRoutes.searchPage;
      case BottomBarEnum.Favorite:
        return AppRoutes.favouritesPage;
      case BottomBarEnum.Lock:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.favouritesPage:
        return FavouritesPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
