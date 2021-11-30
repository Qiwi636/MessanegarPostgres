import 'package:flutter/material.dart';
import 'package:messeneger_postgres/UI/global_widgets/primary_button.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.text,
    required this.navigate,
  }) : super(key: key);

  final String text;
  final String navigate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: PrimaryButton(
        height: double.infinity,
        text: text,
        press: () {
          Navigator.pushNamed(context, navigate);
        },
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
