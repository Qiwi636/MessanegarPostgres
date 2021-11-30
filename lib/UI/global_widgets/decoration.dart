import 'package:flutter/material.dart';

class AppDecoraions extends StatelessWidget {
  const AppDecoraions({
    Key? key,
    required this.color,
    required this.blendMode,
    required this.image,
    required this.child,
  }) : super(key: key);

  final Color color;
  final BlendMode blendMode;
  final String image;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: const Alignment(0.17, 0),
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(color, blendMode),
        ),
      ),
      child: child,
    );
  }
}

//Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),BlendMode.hardLight