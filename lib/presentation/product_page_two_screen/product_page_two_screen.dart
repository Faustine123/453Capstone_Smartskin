import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductPageTwoScreen extends StatelessWidget {
  ProductPageTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Column(
            children: [
              SizedBox(height: 2.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 29.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStack1resveratr(context),
                        SizedBox(height: 8.v),
                        _buildRowresveratrol(context),
                        SizedBox(height: 12.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Suitable for your skin:",
                                  style: theme.textTheme.titleMedium,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "Yes ",
                                  style: theme.textTheme.bodyLarge,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Product Type:",
                                  style: theme.textTheme.titleMedium,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "Cream",
                                  style: theme.textTheme.bodyLarge,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Major Concern:",
                                  style: theme.textTheme.titleMedium,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "Anti-Aging ",
                                  style: theme.textTheme.bodyLarge,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 28.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "Ingredient Highlights",
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 324.h,
                          margin: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "Resveratrol: A natural anti-aging ingredient extracted from grapevine stalks\nVegan Collagen 1: Visibly smooths facial contours. From plant origin. 100% Vegan. Non-GMO.\nHyaluronic Acid: Two molecular sizes of hyaluronic acid hydrate and leave skin feeling soft",
                            maxLines: 9,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                          text: "Compare Product",
                          margin: EdgeInsets.only(
                            left: 24.h,
                            right: 20.h,
                          ),
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimary,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 47.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "All Ingredients",
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 331.h,
                          margin: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "aqua/water/eau, coco caprylate/caprate, caprylic/capric triglyceride, octyldodecyl myristate, butylene glycol, glycerin, butyrospermum parkii  shea  butter extract, cetearyl alcohol, c12 16 alcohols, microcrystalline cellulose, vitis vinifera grape seed oil, cetearyl glucoside, ci 77891 titanium dioxide , hydrogenated lecithin, palmitic acid, parfum  fragrance , potassium cetyl phosphate, caprylyl glycol, palmitoyl grapevine shoot extract, benzyl alcohol, mica, polyacrylate crosspolymer 6, tocopherol, helianthus annuus sunflower  seed oil, xanthan gum, hydrolyzed hyaluronic acid, sodium phytate, adenosine, dehydroacetic acid, acetyl dipeptide 1 cetyl ester, hyaluronic acid, silica, pentylene glycol, linalool, khaya senegalensis bark extract, maltodextrin, tin oxide, limonene, sodium hydroxide, paeonia lactiflora root extract, coumarin, nicotiana benthamiana hexapeptide 40 sh polypeptide 47, citric acid. (246/023)",
                            maxLines: 23,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 41.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 16.v,
          bottom: 16.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: AppbarTitle(
        text: "Back",
        margin: EdgeInsets.only(left: 5.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack1resveratr(BuildContext context) {
    return Container(
      height: 199.v,
      width: 329.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1ResveratrolL,
            height: 199.v,
            width: 329.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 295.h,
                right: 9.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavoriteGray500,
                    height: 22.v,
                    width: 25.h,
                  ),
                  SizedBox(height: 122.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlus,
                    height: 24.v,
                    width: 23.h,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowresveratrol(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 13.h,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: 296.h,
              child: Text(
                "Resveratrol-Lift Firming Cashmere\nCream",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTwitter,
            height: 24.v,
            width: 20.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 18.v,
              bottom: 2.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
