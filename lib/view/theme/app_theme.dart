import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF3700B3);     // بنفش اصلی
  static const Color secondary = Color(0xFF6200EE);   // بنفش روشن
  static const Color background = Color(0xFFFFFFFF);  // زمینه خیلی روشن
  static const Color surface = Color(0xFFF5F5F5);     // سطح کارت‌ها
  static const Color textPrimary = Color(0xFF000000); // متن اصلی
  static const Color errorColor = Color(0xFFB00020); // متن فرعی
  static const Color hoverPurple = Color(0xFFE9DFFF); // متن فرعی
}
class AppRadius {
  static BorderRadius radius_5 = BorderRadius.circular(5.0); 
  static BorderRadius radius_10 = BorderRadius.circular(8.0); 
}
class AppDimes {
  static const double spacingXs = 8.0;
  static const double spacingSm = 16.0;
  static const double spacingMd = 24.0;
  static const double spacingLg = 48.0;
  static const double spacingXl = 64.0;
}
class AppPaddings {
  static EdgeInsets none = EdgeInsets.zero;
  static EdgeInsets all16 = EdgeInsets.all(16);
  static EdgeInsets all24 = EdgeInsets.all(24);
  static EdgeInsets all32 = EdgeInsets.all(32);

}
class AppElevation {
  static const EL_2 = 2.0;
}