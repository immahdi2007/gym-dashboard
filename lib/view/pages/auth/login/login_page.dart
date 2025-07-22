
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
              borderRadius: AppRadius.radius_10,
              color: AppColors.secondary,
              elevation: 2,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("ورود",
                            style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                color: AppColors.background)),
                      ),
                      
                      
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
                      
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("هنوز حساب کاربری ندارید؟"),
                          SizedBox(width: 4,),
                          InkWell(
                            onTap: () {
                              context.go('/sign_up');
                            },
                            child: Text(
                              "ثبت نام", 
                              style:  TextStyle(
                                fontSize: 15,
                                color: AppColors.background, 
                                fontWeight: FontWeight.bold),
                                )
                          ),
                        ],
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
