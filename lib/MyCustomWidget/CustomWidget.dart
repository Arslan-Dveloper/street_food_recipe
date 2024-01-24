import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Helpers/constant.dart';

//Custom text Widget
class MyText extends StatelessWidget {
  String? text;
  TextAlign? textAlign;
  double? fontSize;
  FontWeight? fontWeightText;
  Color? textColor;

  MyText({
    this.text,
    this.fontSize,
    this.textColor,
    this.textAlign,
    this.fontWeightText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'poppins',
        fontSize: fontSize,
        fontWeight: fontWeightText,
        color: textColor,
      ),
    );
  }
}

// Custom Container Widget
class MyContainer extends StatelessWidget {
  double? width;
  double? height;
  Color? color;
  BorderRadiusGeometry? borderRadius;
  Widget? containerWidget;
  BoxShape? shape;
  String? image;
  BoxBorder? border;
  double? blurRadius;
  Gradient? gradiant;
  Clip? myClip;
  Color? shadowColor;
  double? spreadRadiusBox;
  Offset? offset;

  MyContainer({
    this.width,
    this.height,
    this.borderRadius,
    this.color,
    this.containerWidget,
    this.shape,
    this.image,
    this.border,
    this.blurRadius,
    this.gradiant,
    this.myClip,
    this.shadowColor,
    this.spreadRadiusBox,
    this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: myClip ?? Clip.none,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$image'),
        ),
        shape: shape ?? BoxShape.rectangle,
        color: color,
        borderRadius: borderRadius,
        border: border,
        gradient: gradiant,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.transparent,
            spreadRadius: spreadRadiusBox ?? 0,
            blurRadius: blurRadius ?? 0,
            offset: offset ?? Offset(0, 0),
          ),
        ],
      ),
      child: containerWidget,
    );
  }
}

// Custom TextField Widget
class MyTextField extends StatelessWidget {
  String? hintText;
  TextInputType? keyBoardType;
  TextEditingController? textFilledController;
  bool? obscuringText;
  String? obscuringCharacter;
  IconData? icon;
  IconData? prefixIcon;
  VoidCallback? onIconTap;
  double? blurRadius;
  double? spreadRadius;
  Offset? offset;
  Color? containerShadowColor;
  Color? borderSideColor;
  Color? fillColor;
  Color? iconColor;
  Color? prefixIconColor;
  EdgeInsetsGeometry? contectPadding;
  Color? hintTextColor;
  BorderRadius? borderRadiusField;
  double? hintFontSize;
  double? widthTextField;
  double?iconSize;

  MyTextField({
    this.hintText,
    this.keyBoardType,
    this.textFilledController,
    this.obscuringText,
    this.obscuringCharacter,
    this.icon,
    this.onIconTap,
    this.blurRadius,
    this.spreadRadius,
    this.offset,
    this.containerShadowColor,
    this.borderSideColor,
    this.fillColor,
    this.iconColor,
    this.contectPadding,
    this.hintTextColor,
    this.prefixIcon,
    this.prefixIconColor,
    this.borderRadiusField,
    this.hintFontSize,
    this.widthTextField,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: containerShadowColor ??
                MyFoodAppColor.greyColor.withOpacity(0.3),
            blurRadius: blurRadius ?? 20.sp,
            offset: offset ?? Offset(0, 10),
            spreadRadius: spreadRadius ?? 0.5.sp,
          ),
        ],
      ),
      height: 6.0.h,
      width: widthTextField ?? 240.sp,
      child: TextFormField(
        obscureText: obscuringText ?? false,
        obscuringCharacter: obscuringCharacter ?? '*',
        controller: textFilledController,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: onIconTap,
            child: Icon(
              icon,size: iconSize,
              color: iconColor,
            ),
          ),
          // prefixIcon: Icon(
          //   prefixIcon,
          //   color: prefixIconColor,
          // ),
          contentPadding:
              contectPadding ?? EdgeInsets.only(left: 20.sp, bottom: 23.sp),
          fillColor: fillColor ?? MyFoodAppColor.whiteColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: hintFontSize ?? 12.sp,
              color: hintTextColor ?? MyFoodAppColor.blackColor),
          border: OutlineInputBorder(
            borderRadius: borderRadiusField ?? BorderRadius.circular(30.sp),
            borderSide: BorderSide(
              strokeAlign: BorderSide.strokeAlignInside,
              color: borderSideColor ?? MyFoodAppColor.yellowColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadiusField ?? BorderRadius.circular(30.sp),
            borderSide: BorderSide(
              strokeAlign: BorderSide.strokeAlignInside,
              color: borderSideColor ?? MyFoodAppColor.yellowColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadiusField ?? BorderRadius.circular(30.sp),
            borderSide: BorderSide(
              strokeAlign: BorderSide.strokeAlignInside,
              color: borderSideColor ?? MyFoodAppColor.yellowColor,
            ),
          ),
        ),
      ),
    );
  }
}

class MyContainerShadow extends StatelessWidget {
  Widget? widget;
  double? width;
  double? height;
  BorderRadiusGeometry? borderRadius;

  MyContainerShadow({
    this.widget,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 180.sp,
      height: height ?? 40.sp,
      decoration: BoxDecoration(
        color: MyFoodAppColor.whiteColor,
        boxShadow: [
          BoxShadow(
              color: MyFoodAppColor.greyColor.withOpacity(0.10),
              offset: Offset(0, 3),
              blurRadius: 8.sp,
              spreadRadius: 2.sp)
        ],
        borderRadius: borderRadius ?? BorderRadius.circular(10.sp),
      ),
      child: widget,
    );
  }
}
