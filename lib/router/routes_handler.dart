import 'package:ecommerce_app/router/routes.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> routeHandler(RouteSettings settings) {
  final name = settings.name;

  switch (name) {
    case Routes.loginScreen:
      return NavigateTo(builder: (_) => const LoginScreen());

    case Routes.homeScreen:
      return NavigateTo(builder: (_) => const HomeScreen());

    default:
      return NavigateTo(builder: (_) => const LoginScreen());
  }
}

class NavigateTo extends MaterialPageRoute<dynamic> {
  NavigateTo({required super.builder, RouteSettings? routeSettings})
      : super(settings: routeSettings);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}
