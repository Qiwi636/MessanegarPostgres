import 'package:flutter/material.dart';
import 'package:messeneger_postgres/UI/global_widgets/decoration.dart';

import '../pages/chat/chats_page.dart';

class TabChats extends StatelessWidget {
  const TabChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppDecoraions(
      blendMode: BlendMode.hardLight,
      color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
      image: 'assets/images/landscape_purple.jpg',
      child: const ChatPage(),
    );
  }
}
