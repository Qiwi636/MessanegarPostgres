import 'package:flutter/cupertino.dart';
import 'package:messeneger_postgres/global/theme/text_style.dart';

class BigScreenImage extends StatelessWidget {
  const BigScreenImage({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Text(text,
            style: AppTextStyle.h2.copyWith(
              fontStyle: FontStyle.italic,
            )),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
      ],
    );
  }
}
