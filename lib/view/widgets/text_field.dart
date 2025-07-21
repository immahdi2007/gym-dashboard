import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';

class AppTextFeild extends StatelessWidget {
  const AppTextFeild({super.key, required this.text, required this.text_icon});

  final String text;
  final IconData text_icon;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: AppColors.radius_10,
      child: Container(
        width: 400,
        height: 50,
        child: TextField(
          style: TextStyle(fontSize: 18.0),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
            filled: true,
            fillColor: AppColors.surface,
            border: OutlineInputBorder(
              borderRadius: AppColors.radius_10,
              borderSide: BorderSide.none
      
            ),
            hintText: text,
            hintStyle: TextStyle(fontSize: 24.0, ),
            prefixIcon: Icon(text_icon, size: 30.0,),
      
          ),
        ),
      ),
    );
  }
}