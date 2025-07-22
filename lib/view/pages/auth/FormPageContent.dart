import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';
import 'package:gym_dashboard_project/view/widgets/app_button.dart';
import 'package:gym_dashboard_project/view/widgets/text_field.dart';
// import 'package:login_page/view/widgets/app_button.dart';
// import 'package:login_page/view/widgets/app_text_field.dart';

class FormPageContent extends StatelessWidget {
  FormPageContent({super.key, required this.onSubmit, required this.isLogin});
  
  final Function(String) onSubmit;
  final TextEditingController telNumber_controller = TextEditingController();
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text( isLogin ? "لطفا شماره موبایل خود را وارد کنید" : "کد پیامک شده به شماره را وارد کنید" ,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
          SizedBox(height: AppDimes.spacingMd,),
          AppTextFeild(
            text: isLogin ? "شماره ی تلفن" : "", 
            text_icon: isLogin ? "icons/num_code.svg" : "icons/sms.svg", 
            controller: telNumber_controller, 
            obscuretext: false,
            isTellNumber: true,
          ),
          SizedBox(height: AppDimes.spacingMd,),
          AppButton(text: isLogin ? "ارسال کد" : "ورود", onPressed: isLogin ? () {context.go('/verify-code');} : () {context.go('/bodybuilders');}),
          SizedBox(height: AppDimes.spacingSm,),
          
        ],
      ),
    );
  }
}