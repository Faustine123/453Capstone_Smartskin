import 'package:smartskin/presentation/home_page/home_page.dart';
import 'package:smartskin/presentation/search_page/search_page.dart';
import 'package:smartskin/presentation/favourites_page/favourites_page.dart';
import 'package:smartskin/presentation/profile_page/profile_page.dart';
import 'package:smartskin/widgets/app_bar/custom_app_bar.dart';
import 'package:smartskin/widgets/app_bar/appbar_leading_image.dart';
import 'package:smartskin/widgets/app_bar/appbar_subtitle.dart';
import 'package:smartskin/widgets/custom_elevated_button.dart';
import 'package:smartskin/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:smartskin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child: Column(children: [
                  SizedBox(height: 6.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 31.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildFourteen(context),
                                    SizedBox(height: 12.v),
                                    _buildNinetySeven(context),
                                    SizedBox(height: 12.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Suitable for your skin:",
                                              style: CustomTextStyles
                                                  .titleMediumffc3829e_1),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "Yes ",
                                              style: CustomTextStyles
                                                  .bodyLargeff562135)
                                        ]),
                                        textAlign: TextAlign.left),
                                    SizedBox(height: 8.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Product Type:",
                                                  style: CustomTextStyles
                                                      .titleMediumffc3829e_1),
                                              TextSpan(text: " "),
                                              TextSpan(
                                                  text: "Cream",
                                                  style: CustomTextStyles
                                                      .bodyLargeff562135)
                                            ]),
                                            textAlign: TextAlign.left)),
                                    SizedBox(height: 7.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Major Concern:",
                                                  style: CustomTextStyles
                                                      .titleMediumffc3829e_1),
                                              TextSpan(text: " "),
                                              TextSpan(
                                                  text: "Anti-Aging ",
                                                  style: CustomTextStyles
                                                      .bodyLargeff562135)
                                            ]),
                                            textAlign: TextAlign.left)),
                                    SizedBox(height: 31.v),
                                    Text("Ingredient Highlights",
                                        style: CustomTextStyles
                                            .titleMediumBlack900),
                                    SizedBox(height: 9.v),
                                    Container(
                                        width: 317.h,
                                        margin: EdgeInsets.only(
                                            left: 8.h, right: 4.h),
                                        child: Text(
                                            "BT Matrix™: Is a retinol-like blend shown to support skin structure.\nCeramide NP: Is a skin-mimicking lipid that supports a strong skin barrier.\nSqualane: Protects skin and prevents moisture loss.",
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyLarge)),
                                    SizedBox(height: 23.v),
                                    CustomElevatedButton(
                                        text: "Compare Product",
                                        margin: EdgeInsets.only(
                                            left: 22.h, right: 20.h),
                                        onPressed: () {
                                          onTapCompareProduct(context);
                                        },
                                        alignment: Alignment.center),
                                    SizedBox(height: 27.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Text("All Ingredients",
                                            style: CustomTextStyles
                                                .titleMediumBlack900)),
                                    SizedBox(height: 8.v),
                                    Container(
                                        width: 323.h,
                                        margin: EdgeInsets.only(
                                            left: 1.h, right: 6.h),
                                        child: Text(
                                            "Aqua (Water), Glycerin, Pentylene Glycol, Cocoglycerides, Squalane, Glyceryl Stearate Citrate, Hydrogenated Coco-glycerides, Jojoba Esters, Propanediol, Polyglycerin-3, Camellia Sinensis Leaf Extract, Nephelium Lappaceum Leaf Extract, Alpinia Speciosa Leaf Extract, Tocopherol, Tocopheryl Acetate, Ceramide NP, Carbomer, Adenosine, Hydroxyacetophenone, Chlorphenesin, Sodium Hydroxide, Sodium Polyacrylate, Maltodextrin, Parfum (Fragrance), Linalool, Citronellol, Geraniol.",
                                            maxLines: 13,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyLarge))
                                  ]))))
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
  Widget _buildFourteen(BuildContext context) {
    return Container(
        height: 188.v,
        width: 329.h,
        margin: EdgeInsets.only(left: 1.h),
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgH00006521Stylized,
              height: 188.v,
              width: 329.h,
              radius: BorderRadius.circular(4.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 294.h, right: 10.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFavoriteGray500,
                        height: 22.v,
                        width: 25.h),
                    SizedBox(height: 116.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgPlus,
                        height: 24.v,
                        width: 23.h)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildNinetySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 13.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: SizedBox(
                  width: 268.h,
                  child: Text("Black Tea Anti-Aging Ceramide \nMoisturizer",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumBlack900))),
          CustomImageView(
              imagePath: ImageConstant.imgTwitter,
              height: 24.v,
              width: 20.h,
              margin: EdgeInsets.only(left: 29.h, top: 2.v, bottom: 17.v))
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

  /// Navigates to the compareProductsScreen when the action is triggered.
  onTapCompareProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.compareProductsScreen);
  }
}
