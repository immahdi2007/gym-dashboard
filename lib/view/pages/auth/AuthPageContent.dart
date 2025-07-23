
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/pages/auth/login/login_form.dart';
import 'package:gym_dashboard_project/view/pages/auth/verify-code/verify_form.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';


class AuthPageContent extends StatelessWidget {
  const AuthPageContent({super.key, required this.isLogin, required this.onSubmit});

  final bool isLogin;
  final void Function(String tellNumber) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
            ),
            child: Material(
              borderRadius: AppRadius.radius_5,
              color: AppColors.secondary,
              elevation: AppElevation.EL_2,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 450),
                child: Padding(
                  padding: EdgeInsets.only(left: 32, right: 32, bottom: 48, top: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            isLogin ?
                            Align(
                              alignment: Alignment.centerRight,
                               child: IconButton(
                                onPressed: () {context.go('/welcome');},
                                 icon: SvgPicture.network("icons/back.svg",
                                 color: AppColors.background , height: 50, width: 50, 
                                ),
                               ),
                             ) : SizedBox.shrink()
                             ,
                            Column(
                              children: [
                                SvgPicture.network('icons/barbell.svg', color: Colors.white, height: 50,),
                                Text("باشگاه بدنسازی نیتروژن", style: TextStyle(
                                  fontSize: 24 ,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.background
                                ),),
                              ],
                            ),
                          ],
                        ),
                      )
                      ,
                      SizedBox(height: AppDimes.spacingXs,),
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
                        child: isLogin ? LoginForm(
                          onSubmit: (email){
                            print(email);
                          },
                        ) : VerifyForm(
                            
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
