import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/pages/auth/AuthPageContent.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageContent(
      isLogin: false, 
      onSubmit: (onSubmit) {}
    );
  }
}