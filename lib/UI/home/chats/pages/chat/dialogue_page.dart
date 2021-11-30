import 'package:flutter/material.dart';
import 'package:messeneger_postgres/buisness_logic/chat/chat_message.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key, required this.chat}) : super(key: key);

  final ChatMessage chat;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: SizedBox(
            width: double.infinity,
            child: Text(
              chat.name,
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(chat.image),
              ),
            ),
          ],
        ),
        // appBar: AppBar(
        //   title: Row(
        //     children: [
        //       CircleAvatar(
        //         radius: 24,
        //         backgroundImage: AssetImage(chat.image),
        //       ),
        //       Text(chat.name)
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
