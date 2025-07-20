import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dashboard_project/view/components/App_colors.dart';

class SideBarText extends StatefulWidget {
  final String text;
  final String img;
  final VoidCallback? onTap;
  final bool isSelected;

  const SideBarText({super.key, required this.text, required this.img, this.onTap, required this.isSelected});

  @override
  State<SideBarText> createState() => _SideBarTextState();
}

class _SideBarTextState extends State<SideBarText> {

  bool _isHoverd = false;

  @override
  Widget build(BuildContext context) {

    final bool isActive = _isHoverd || widget.isSelected;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          _isHoverd = true;
        });
      },

      onExit: (event) {
        setState(() {
          _isHoverd = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : Colors.transparent,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.network(widget.img, width: 35, height: 35,
              colorFilter: isActive ? ColorFilter.mode( AppColors.background, BlendMode.srcIn) : ColorFilter.mode( AppColors.surface, BlendMode.srcIn)),
              SizedBox(width: 11,),
              Text(widget.text,
              style: TextStyle(
                color: isActive ? AppColors.background : AppColors.surface,
                fontFamily: "modam" , fontWeight: FontWeight.w300 , fontSize: 24.0
              ),
              )
            ],
          ),
        ),
      ),


    );
  }
}