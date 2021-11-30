import 'package:flutter/material.dart';
import 'package:messeneger_postgres/global/theme/colors.dart';

class FilledOutlineButton extends StatelessWidget {
  const FilledOutlineButton({
    Key? key,
    required this.text,
    required this.press,
    this.isFilled = true,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  // final Color color;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Colors.white),
      ),
      color: isFilled ? Colors.white : Colors.transparent,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? AppColors.kcontentColorLightTheme : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
