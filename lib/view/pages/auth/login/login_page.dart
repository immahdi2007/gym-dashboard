import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/pages/auth/AuthPageContent.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageContent(
      isLogin: true,
      onSubmit: (tellNumber) {},
    );
  }
}