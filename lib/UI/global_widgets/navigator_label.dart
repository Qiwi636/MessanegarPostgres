import 'package:flutter/material.dart';
import 'package:messeneger_postgres/global/theme/text_style.dart';

class NavigatorLabel extends StatelessWidget {
  const NavigatorLabel({
    Key? key,
    required this.fontSize,
    this.opacity = 0.7,
    required this.text,
    required this.route,
  }) : super(key: key);

  final double fontSize;
  final double opacity;
  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Opacity(
        opacity: opacity,
        child: Text(
          text,
          style: AppTextStyle.h2.copyWith(fontSize: fontSize),
        ),
      ),
    );
  }
}
