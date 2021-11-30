import 'package:flutter/material.dart';
import 'package:messeneger_postgres/UI/global_widgets/decoration.dart';
import 'package:messeneger_postgres/UI/home/chats/pages/profile/profile_page.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppDecoraions(
      blendMode: BlendMode.softLight,
      color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
      image: 'assets/images/landscape_purple.jpg',
      child: const ProfilePage(),
    );
  }
}
