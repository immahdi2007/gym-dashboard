import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dashboard_project/view/theme/app_theme.dart';

enum ValidatorType { none, phone, password, email }

class AppTextFeild extends StatefulWidget {
  const AppTextFeild({
    super.key,
    required this.text,
    required this.text_icon,
    required this.controller,
    this.validatorType = ValidatorType.none, 
    this.onErrorChange,
    // required this.obscuretext,
    // this.isTellNumber = false
  });

  final String text;
  final String text_icon;
  final TextEditingController controller;
  final ValidatorType validatorType;
  final Function(bool hasError)? onErrorChange;

  @override
  State<AppTextFeild> createState() => _AppTextFeildState();
}

class _AppTextFeildState extends State<AppTextFeild> {
  bool obscure = false;
  String? _errorText;
  final FocusNode _focusNode = FocusNode();
  bool _showerror = true;

  @override
  void initState() {
    obscure = isPassword;
    super.initState();

    _focusNode.addListener(() {
      if(!_focusNode.hasFocus){
        final error = validate(widget.controller.text);
        setState(() {
          _showerror = true;
          _errorText = error;
        });
      }
    });

    widget.controller.addListener(() {

      final error = validate(widget.controller.text);
      if(error != _errorText){
        widget.onErrorChange?.call(error != null);
        setState(() {});
      }
    });

  }
  
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }


  String? validate(String value) {
    if (widget.validatorType == ValidatorType.phone) {
      if (value == null || value.isEmpty) {
        return "لطفا این فیلد را پر کنید";
      }
      final ph_regex = RegExp(
          r'^((0?9)|(\+?989))((14)|(13)|(12)|(19)|(18)|(17)|(15)|(16)|(11)|(10)|(90)|(91)|(92)|(93)|(94)|(95)|(96)|(32)|(30)|(33)|(35)|(36)|(37)|(38)|(39)|(00)|(01)|(02)|(03)|(04)|(05)|(41)|(20)|(21)|(22)|(23)|(31)|(34)|(9910)|(9911)|(9913)|(9914)|(9999)|(999)|(990)|(9810)|(9811)|(9812)|(9813)|(9814)|(9815)|(9816)|(9817)|(998))\d{7}$');
      if (!ph_regex.hasMatch(value)) {
        return "شماره همراه نامعتبر است";
      }
    } else if (widget.validatorType == ValidatorType.password) {
      if (value == null || value.isEmpty) {
        return "پسورد را وارد کنید";
      }
      if (value.length < 6) {
        return "پسورد باید حداقل 6 حرف داشته باشد";
      }
    }


    return null;
  }

  bool get isPhone => widget.validatorType == ValidatorType.phone;
  bool get isPassword => widget.validatorType == ValidatorType.password;
  bool get hasError => _errorText != null && _errorText!.isNotEmpty;


  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isPhone ? TextDirection.ltr : TextDirection.rtl,
      child: TextFormField(
        focusNode: _focusNode,
        // validator:  ,
        style: TextStyle(fontSize: isPhone ? 24.0 : 16.0),
        controller: widget.controller,
        obscureText: obscure,
    
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(
              borderRadius: AppRadius.radius_5, borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 1)),
          hintText: widget.text,
          hintStyle: TextStyle(fontSize: 16.0, letterSpacing: -0.5),
          prefixIcon: Container(
              margin: EdgeInsets.only(
                  left: !isPhone ? 0 : 10, right: isPhone ? 0 : 10),
              child: SvgPicture.network(
                widget.text_icon,
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              )),
          prefixIconConstraints: BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: double.infinity,
              minHeight: 30,
              minWidth: 30),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: obscure
                      ? Icon(
                          Icons.visibility,
                          size: 30.0,
                        )
                      : Icon(
                          Icons.visibility_off,
                          size: 30.0,
                        ))
              : null,
              errorText: _showerror ? _errorText : null,
              errorStyle: TextStyle(
                backgroundColor: Colors.transparent,
                color: AppColors.errorColor
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.errorColor, width: 1)
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: AppRadius.radius_5,
                borderSide: BorderSide(color: AppColors.errorColor, width: 1),
              ),
        ),
      ),
    );
  }
}
