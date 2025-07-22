import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/pages/auth/FormPageContent.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key, required this.onSubmit});

  final Function(String) onSubmit;
  final TextEditingController telNumber_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return FormPageContent(
      isLogin: true,
      onSubmit: (s) {},
    );
  }
}