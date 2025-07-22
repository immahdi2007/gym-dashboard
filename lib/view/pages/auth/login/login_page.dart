
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/pages/auth/login/login_form.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            // margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(16),
            ),
            child: Material(
              borderRadius: AppRadius.radius_5,
              color: AppColors.secondary,
              elevation: AppElevation.EL_2,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 450),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 48),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      
                      Container(
                        child: Text("باشگاه بدن سازی نیتروژن", style: TextStyle(
                          fontSize: 32 ,
                          fontWeight: FontWeight.bold,
                          color: AppColors.background
                        ),),
                      )
                      ,
                      SizedBox(height: AppDimes.spacingMd,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("ورود | ثبت نام",
                            style: TextStyle(
                                fontSize: 24,
                                color: AppColors.background)),
                      ),
                      
                      SizedBox(height: AppDimes.spacingMd,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: AppRadius.radius_10,
                          color: AppColors.background,
                        ),
                        width: MediaQuery.sizeOf(context).width,
                        child: LoginForm(
                          onSubmit: (email, password){
                            print(email);
                            print(password);
                          },
                        ),
                      ),
                                            
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
