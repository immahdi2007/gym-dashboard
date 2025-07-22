import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';

class AppTextFeild extends StatefulWidget {
  const AppTextFeild({
    super.key, 
    required this.text, 
    required this.text_icon, 
    required this.controller, 
    required this.obscuretext, 
    this.isTellNumber = false
  });

  final String text;
  final String text_icon;
  final TextEditingController controller;
  final bool obscuretext;
  final bool isTellNumber;


  @override
  State<AppTextFeild> createState() => _AppTextFeildState();
}

class _AppTextFeildState extends State<AppTextFeild> {

  bool obscure = false;


  @override
  void initState(){
    obscure = widget.obscuretext;
    super.initState();
  }



  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: AppRadius.radius_10,
      child: Container(
        width: 400,
        height: 50,
        child: Directionality(
          textDirection: widget.isTellNumber ? TextDirection.ltr : TextDirection.rtl,
          child: TextFormField(
            // validator: ,
            style: TextStyle(fontSize: widget.isTellNumber ? 24.0 : 18.0 ),
            controller: widget.controller,
            obscureText: obscure,
          
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric( vertical: 12.0),
              filled: true,
              fillColor: AppColors.surface,
              border: OutlineInputBorder(
                borderRadius: AppRadius.radius_10,
                borderSide: BorderSide.none
                
              ),
              hintText: widget.text,
              hintStyle: TextStyle(fontSize: 24.0, ),
              prefixIcon: Container(margin: EdgeInsets.only(left: 10, right: 10) ,child: SvgPicture.network(widget.text_icon,width: 25, height: 25, fit: BoxFit.contain,)), 
              prefixIconConstraints: BoxConstraints(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                minHeight: 30,
                minWidth: 30
              ),
              suffixIcon: widget.obscuretext ? IconButton(
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                }, 
                icon: obscure ? Icon(Icons.visibility, size: 30.0,) : Icon(Icons.visibility_off, size: 30.0,)
              ) : null,
             
            ),
          ),
        ),
      ),
    );
  }
}