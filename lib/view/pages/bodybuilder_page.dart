import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/models/bodybuilders.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';
import 'package:gym_dashboard_project/view/theme/text_styls.dart';
import 'package:gym_dashboard_project/view/widgets/app_table.dart';
import 'package:gym_dashboard_project/view/widgets/main_page_cart.dart';
import 'package:gym_dashboard_project/view/widgets/text_field.dart';

class BodyBuildersPage extends StatefulWidget {
  BodyBuildersPage ({super.key});

  @override
  State<BodyBuildersPage> createState() => _BodyBuildersPageState();
}

class _BodyBuildersPageState extends State<BodyBuildersPage> {
  final TextEditingController search_controller = TextEditingController();

  List<BodyBuilders> bodybuilders = [
    BodyBuilders(
          id: 1,
          name: 'مهدی',
          last_name: 'ملانوری',
          start_date: DateTime(2023, 2, 15),
          goal: 'افزایش حجم عضلات',
          injury: 'زانو درد، آرتروز، دیسک کمر، مشکلات روانی',
          weight: 78.0,
          height: 177.0,
          img: "img/img1.jpg",
          analysis: "کلیک",
    ),
    BodyBuilders(
          id: 2,
          name: 'حسین',
          last_name: 'احمدی',
          start_date: DateTime(2023, 2, 15),
          goal: 'کاهش وزن',
          injury: 'زانو درد، آرتروز، دیسک کمر، مشکلات روانی',
          weight: 118.0,
          height: 187.0,
          img: "img/img1.jpg",
          analysis: "کلیک",
    ),
    BodyBuilders(
          id: 3,
          name: 'علی',
          last_name: 'حسینی',
          start_date: DateTime(2023, 2, 15),
          goal: 'افزایش حجم عضلات',
          injury: 'زانو درد، آرتروز، دیسک کمر، مشکلات روانی',
          weight: 58.0,
          height: 170.0,
          img: "img/img1.jpg",
          analysis: "کلیک",
    ),
    BodyBuilders(
          id: 4,
          name: 'محمد',
          last_name: 'دهقان',
          start_date: DateTime(2023, 2, 15),
          goal: 'افزایش حجم عضلات',
          injury: 'زانو درد، آرتروز، دیسک کمر، مشکلات روانی',
          weight: 70.0,
          height: 190.0,
          img: "img/img1.jpg",
          analysis: "کلیک",
    ),
  ];

  List<BodyBuilders> filteredBodyBuilders = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    filteredBodyBuilders = List.from(bodybuilders);

    search_controller.addListener(() {
      final query = search_controller.text.trim().toLowerCase();
      setState(() {
          filteredBodyBuilders = bodybuilders.where((b) => 
            b.name.toLowerCase().contains(query) ||
            b.last_name.toLowerCase().contains(query)
          ).toList();
      });
    });
  }



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
            child: AppTable(bodybuilders: filteredBodyBuilders,)
          ,),
        ],
      ),
    );
  }
}