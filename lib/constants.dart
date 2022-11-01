import 'package:fluter_intro_screen/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFEBC2F);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFEBC2F), Color(0xFFD82E2F)],
);
const kTextColor = Color(0xFF757575);
final introTextStyle = TextStyle(
  fontFamily: 'Poppins-Bold',
  fontSize: getProportionateScreenHeight(16),
  color: const Color(0xffFFFFFF),
  fontWeight: FontWeight.w300,
);
const kAnimationDuration = Duration(milliseconds: 200);
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);
