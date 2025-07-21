import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';
import 'package:gym_dashboard_project/view/theme/text_styls.dart';

class MainPageCart extends StatelessWidget {
  MainPageCart({super.key, required this.text, required this.num_text});
  final String text;
  final String num_text;

  var num_style = AppTextStyle.bold_24.copyWith(color: AppColors.primary, fontSize: 48);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: AppColors.radius_10,
      child: Container(
        width: 270,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppColors.radius_10,
        ),
        padding: EdgeInsets.only(top: 19.0, left: 35.0, right: 35.0, bottom: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: AppTextStyle.bold_24 ,),
            SizedBox(height: 26.0,),
            Text(num_text, style: num_style ,)
          ],
        ),
      ),
    );
  }
}