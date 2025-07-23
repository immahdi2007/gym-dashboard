import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';
import 'package:gym_dashboard_project/view/theme/text_styls.dart';
import 'package:gym_dashboard_project/view/widgets/app_table.dart';
import 'package:gym_dashboard_project/view/widgets/main_page_cart.dart';
import 'package:gym_dashboard_project/view/widgets/text_field.dart';

class BodyBuildersPage extends StatelessWidget {
  BodyBuildersPage ({super.key});

  final TextEditingController search_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all32,
      child: Column(
        children: [
          Expanded(
            flex: 4, 
            child: Row(
              children: [
                Text("لیست\nورزشکاران", style: AppTextStyle.bold_24.copyWith(fontSize: 48, color: AppColors.primary),),
                SizedBox(width: AppDimes.spacingXl,),
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
            child: SizedBox(
              width: 400,
              child: AppTextFeild(
                text: "جستجو", 
                text_icon: "icons/search.svg", 
                controller: search_controller, 
                // obscuretext: false,
                validatorType: ValidatorType.none,
              ),
            ))),
          SizedBox(height: AppDimes.spacingSm,),

          Expanded(
            flex: 6, 
            child: AppTable(),),
        ],
      ),
    );
  }
}