import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/components/App_colors.dart';
import 'package:gym_dashboard_project/view/components/app_table.dart';
import 'package:gym_dashboard_project/view/components/main_page_cart.dart';
import 'package:gym_dashboard_project/view/components/sidebar.dart';
import 'package:gym_dashboard_project/view/components/text_field.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          // Container(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //     // MainPageCart(text: "تعداد ورزشکاران", num_text: "69"),
          //     ]),
          // ),
          // AppTextFeild(text: "جستجو", text_icon: Icons.search,)
          AppTable()
        ],
      ),
    );
  }
}