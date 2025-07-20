import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/components/App_colors.dart';
import 'package:gym_dashboard_project/view/components/app_table.dart';
import 'package:gym_dashboard_project/view/components/main_page_cart.dart';
import 'package:gym_dashboard_project/view/components/sidebar.dart';
import 'package:gym_dashboard_project/view/components/text_field.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.child, });

  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Expanded(child: child)
        ],
      ),
    );
  }
}
