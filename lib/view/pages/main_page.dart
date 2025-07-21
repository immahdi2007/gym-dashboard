import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';
import 'package:gym_dashboard_project/view/widgets/app_table.dart';
import 'package:gym_dashboard_project/view/widgets/main_page_cart.dart';
import 'package:gym_dashboard_project/view/widgets/sidebar.dart';
import 'package:gym_dashboard_project/view/widgets/text_field.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.child, });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),

          Expanded(
            child: Stack(
              children:[ 
                Positioned(
                  child: SvgPicture.network('icons/weightlifting.svg', width: 425, height: 425,)
                ),

              child
              ]))
        ],
      ),
    );
  }
}
