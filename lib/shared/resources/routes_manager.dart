import 'package:clean_base/features/home/presentaion/home_screen.dart';

import '../../features/splash/splash_view.dart';
import 'strings_manager.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String homeRoute = '/homeRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());

      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
