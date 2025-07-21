import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';
import 'package:gym_dashboard_project/view/widgets/sidebar_text.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  int selectedIndex = 100;

  final List<Map<String, dynamic>> sidebar_items = [
    {"text": "ورزشکاران", "img": "icons/contacts.svg", 'route': '/bodybuilders'},
    {"text": "برنامه ها", "img": "icons/hand_with_pen.svg", 'route': "/workout-plans"},
  ];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    final location = GoRouterState.of(context).uri.toString();
    final index = sidebar_items.indexWhere((item) => location.startsWith(item['route']));

    if(index != -1 && selectedIndex != index){
      setState(() {
        selectedIndex = index;
      });
    }
  }



  
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
                context.go(item['route'] as String);
              },
              );
          })
        ],
      ),
    );
  }
}