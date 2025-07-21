import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';
import 'package:gym_dashboard_project/view/theme/text_styls.dart';
import 'package:gym_dashboard_project/view/widgets/app_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
                child: SvgPicture.network('icons/weightlifting.svg', width: 800, height: 800,)
          ),
          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("باشگاه بدنسازی نیتروژن" , style: AppTextStyle.bold_24.copyWith(fontSize: 64, color: AppColors.primary),),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(text: "ورود", onPressed: () {context.go("/");},),
                  SizedBox(width: 20,),
                  AppButton(text: "ثبت نام", onPressed:  () {context.go("/login_up");},)
                ],
              ),
        
            ],
          ),
        ),
      ]
      ),

    );
  }
}