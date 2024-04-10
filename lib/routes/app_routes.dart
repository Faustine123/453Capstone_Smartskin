import 'package:flutter/material.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/product_page_screen/product_page_screen.dart';
import '../presentation/compare_products_screen/compare_products_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String searchPage = '/search_page';

  static const String productPageScreen = '/product_page_screen';

  static const String compareProductsScreen = '/compare_products_screen';

  static const String favouritesPage = '/favourites_page';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeContainerScreen: (context) => HomeContainerScreen(),
    productPageScreen: (context) => ProductPageScreen(),
    compareProductsScreen: (context) => CompareProductsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
