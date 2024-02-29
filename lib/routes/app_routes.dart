import 'package:flutter/material.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/otp_001_screen/otp_001_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/prefernces_screen/prefernces_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String otp001Screen = '/otp_001_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String preferncesScreen = '/prefernces_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registerScreen: (context) => RegisterScreen(),
    otp001Screen: (context) => Otp001Screen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    preferncesScreen: (context) => PreferncesScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
