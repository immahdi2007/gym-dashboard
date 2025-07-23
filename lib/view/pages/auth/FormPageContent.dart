import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';
import 'package:gym_dashboard_project/view/widgets/app_button.dart';
import 'package:gym_dashboard_project/view/widgets/text_field.dart';


enum FormMode {
  login,
  verifyCode
}

class FormPageContent extends StatefulWidget {
  FormPageContent({super.key, required this.onSubmit, required this.mode});

  final Function(String) onSubmit;
  // final bool isLogin;
  final FormMode mode;


  @override
  State<FormPageContent> createState() => _FormPageContentState();
}

class _FormPageContentState extends State<FormPageContent> {
  final TextEditingController telNumber_controller = TextEditingController();

  bool formHasError = true;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   formHasError = true;
  // }

  bool get isLogin => widget.mode == FormMode.login;
  bool get isVerify => widget.mode == FormMode.verifyCode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isLogin
                ? "لطفا شماره موبایل خود را وارد کنید"
                : "کد پیامک شده به شماره را وارد کنید",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: AppDimes.spacingMd,
          ),
          AppTextFeild(
            text: isLogin ? "شماره ی تلفن" : "",
            text_icon: isLogin ? "icons/num_code.svg" : "icons/sms.svg",
            controller: telNumber_controller,
            validatorType: isLogin ? ValidatorType.phone : ValidatorType.verifyCode,
            onErrorChange: (hasError) {
              setState(() {
                formHasError = hasError;
              });
            },
          ),
          SizedBox(
            height: AppDimes.spacingMd,
          ),
          AppButton(
              text: isLogin ? "ارسال کد" : "ورود",
              onPressed: isLogin && !formHasError
                  ? () { context.go('/verify-code'); formHasError = false;} :
                  isVerify && !formHasError ? () { context.go('/bodybuilders'); formHasError = false;} :
                  () {}
                  ),
          SizedBox(
            height: AppDimes.spacingSm,
          ),
        ],
      ),
    );
  }
}
