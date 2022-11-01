import 'package:fluter_intro_screen/screens/home/home_screen.dart';
import 'package:fluter_intro_screen/screens/intro_screen/intro_screen.dart';
import 'package:fluter_intro_screen/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
