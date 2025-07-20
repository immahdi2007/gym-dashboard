import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dashboard_project/view/components/App_colors.dart';
import 'package:gym_dashboard_project/view/components/sidebar_text.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  int selectedIndex = 100;

  final sidebar_items = [
    {"text": "ورزشکاران", "img": "icons/contacts.svg"},
    {"text": "برنامه ها", "img": "icons/hand_with_pen.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: AppColors.secondary,
      ),
      child: Column(
        children: [
          SizedBox(height: 115.0,),
          ...List.generate(sidebar_items.length, (index) {
            final item = sidebar_items[index];
            return SideBarText(text: item['text'] as String ,
              img: item["img"] as String,
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              );
          })
        ],
      ),
    );
  }
}