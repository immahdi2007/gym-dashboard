import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF3700B3);     // بنفش اصلی
  static const Color secondary = Color(0xFF6200EE);   // بنفش روشن
  static const Color background = Color(0xFFFFFFFF);  // زمینه خیلی روشن
  static const Color surface = Color(0xFFF5F5F5);     // سطح کارت‌ها
  static const Color textPrimary = Color(0xFF000000); // متن اصلی
  static const Color errorColor = Color(0xFFB00020); // متن فرعی

  static const container_shadow = [
              BoxShadow(
                color: Color.fromARGB(190, 155, 155, 155),
                spreadRadius: 0,
                blurRadius: 12,
                offset: Offset(6, 6)
              ),
              BoxShadow(
                color: Color.fromARGB(186, 235, 235, 235),
                spreadRadius: 0,
                blurRadius: 12,
                offset: Offset(-6, -6)
              ),
            ];
}