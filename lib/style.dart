import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBackgroundColor = Color(0xFFF1EFF1);
const kPrimaryColor = Color(0xFF035AA6);
const kSecondaryColor = Color(0xFFFFA41B);
const kTextColor = Color(0xFF000839);
const kTextLightColor = Color(0xFF747474);
const kBlueColor = Color(0xFF40BAD5);
const kDefaultPadding = 20.0;

// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);

final greyBackground = const Color.fromRGBO(249, 252, 255, 1);
final greyBorder = const Color.fromRGBO(207, 207, 207, 1);

//--------------------------- Theme data ----------------------------

ThemeData getTheme(BuildContext context) {
  return ThemeData(
      primaryColor: kPrimaryColor,
      accentColor: kPrimaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme));
}

//--------------------------- screen height & width ----------------------------

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

//----------------------------- text-styles sans Regular ------------------

TextStyle name() {
  return TextStyle();
}

TextStyle titleStyle() {
  return TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}

TextStyle subTitleStyle() {
  return TextStyle(
    fontSize: 16,
    color: Colors.white.withOpacity(0.9),
    fontWeight: FontWeight.w600,
  );
}

TextStyle textSyle() {
  return TextStyle(
    fontSize: 18.0,
    color: kPrimaryColor,
    fontWeight: FontWeight.w600,
  );
}

TextStyle scanStyle() {
  return TextStyle(
      fontSize: 16, color: kPrimaryColor, fontWeight: FontWeight.w600);
}

TextStyle btnTextStyle() {
  return TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
}

TextStyle ggleBtn() {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  );
}

const double regularPadding = 8;
const double doublePadding = 16;
const double largePadding = 24.0;
