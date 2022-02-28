import 'package:flutter/material.dart';

const Color secondaryColor = Color(0xff0d47a1);
const Color primaryColor = Color(0xff2196f3);
const Color borderColor = Color(0xffe5e5e5);

Map<int, Color> swatch = {
  50: primaryColor.withOpacity(0.1),
  100: primaryColor.withOpacity(0.2),
  200: primaryColor.withOpacity(0.3),
  300: primaryColor.withOpacity(0.4),
  400: primaryColor.withOpacity(0.5),
  500: primaryColor.withOpacity(0.6),
  600: primaryColor.withOpacity(0.7),
  700: primaryColor.withOpacity(0.8),
  800: primaryColor.withOpacity(0.9),
  900: primaryColor.withOpacity(1.0),
};
MaterialColor colorSwatch = MaterialColor(0xff2196f3, swatch);
