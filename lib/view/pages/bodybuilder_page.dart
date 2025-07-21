import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';
import 'package:gym_dashboard_project/view/theme/text_styls.dart';
import 'package:gym_dashboard_project/view/widgets/app_table.dart';
import 'package:gym_dashboard_project/view/widgets/main_page_cart.dart';
import 'package:gym_dashboard_project/view/widgets/text_field.dart';

class BodyBuildersPage extends StatelessWidget {
  const BodyBuildersPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          Expanded(
            flex: 4, 
            child: Row(
              children: [
                Text("لیست\nورزشکاران", style: AppTextStyle.bold_24.copyWith(fontSize: 48, color: AppColors.primary),),
                SizedBox(width: 100,),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainPageCart(text: "تعداد ورزشکاران", num_text: "69"),
                    MainPageCart(text: "در صف انتظار", num_text: "78"),
                    MainPageCart(text:  "پیام ها", num_text: "85"),
                  ]
                )
                )
              ],
          )),
          Expanded(
            flex: 1, 
            child: Align(
            alignment: Alignment.centerRight ,
            child: AppTextFeild(text: "جستجو", text_icon: Icons.search
                      ))),
          SizedBox(height: 25,),

          Expanded(
            flex: 6, 
            child: AppTable(),),
        ],
      ),
    );
  }
}