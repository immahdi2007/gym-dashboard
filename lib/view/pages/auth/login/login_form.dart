import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';
import 'package:gym_dashboard_project/view/widgets/app_button.dart';
import 'package:gym_dashboard_project/view/widgets/text_field.dart';
// import 'package:login_page/view/widgets/app_button.dart';
// import 'package:login_page/view/widgets/app_text_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key, required this.onSubmit});
  
  final Function(String, String) onSubmit;
  final TextEditingController telNumber_controller = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("لطفا شماره موبایل خود را وارد کنید", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
          SizedBox(height: AppDimes.spacingMd,),
          AppTextFeild(
            text: "شماره ی موبایل", 
            text_icon: "icons/num_code.svg", 
            controller: telNumber_controller, 
            obscuretext: false,
            isTellNumber: true,
          ),
          SizedBox(height: AppDimes.spacingMd,),
          AppButton(text: "ارسال کد", onPressed: () {}),
          SizedBox(height: AppDimes.spacingSm,),
          Align(
            alignment: Alignment.center,
            child: TextButton(onPressed: () {},
            child: Text("رمز عبور را فراموش کرده‌اید؟ اینجا کلیک کنید.", style: TextStyle(fontSize: 16),)))
        ],
      ),
    );
  }
}