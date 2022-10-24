import 'package:flutter/material.dart';
import 'package:fluter_intro_screen/routes.dart';
import 'package:fluter_intro_screen/screens/splash/splash_screen.dart';
import 'package:fluter_intro_screen/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),

      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
