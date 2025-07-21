import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(2),
        shadowColor: MaterialStateProperty.all(Colors.black),
        surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)){
            return AppColors.primary;
          }
          return AppColors.background;
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)){
            return AppColors.background;
          }
          return AppColors.primary;
        }),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.pressed)){
            return AppColors.secondary;
          }
          return null;
        }),
        padding: MaterialStateProperty.all(EdgeInsets.only(bottom: 15)),
        minimumSize: MaterialStateProperty.all(Size(315, 55)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppColors.radius_10,
            side: BorderSide(
              color: AppColors.primary,
              width: 2
            )
          )
        )
      ),
      child: Text(text, style: TextStyle(fontSize: 32),)
      );
  }
} 