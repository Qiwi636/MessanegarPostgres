import 'package:flutter/material.dart';
import 'package:messeneger_postgres/global/constant.dart';
import 'package:messeneger_postgres/global/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    required this.height,
    this.elevation = 0,
    this.color = AppColors.kPrimaryColor,
    this.padding = const EdgeInsets.all(AppConstant.kDefaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final double height;
  final VoidCallback press;
  final Color color;
  final EdgeInsets padding;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      height: height,
      onPressed: press,
      elevation: elevation,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
