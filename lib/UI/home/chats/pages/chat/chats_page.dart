import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messeneger_postgres/buisness_logic/chat/chat_message.dart';
import 'package:messeneger_postgres/global/constant.dart';
import 'package:messeneger_postgres/global/theme/colors.dart';
import 'package:messeneger_postgres/global/theme/text_style.dart';

import 'dialogue_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: testChatMessage.length,
            itemBuilder: (context, index) => ChatCard(
              chat: testChatMessage[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(
                    chat: testChatMessage[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chat, required this.press})
      : super(key: key);

  final ChatMessage chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppConstant.kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: AppColors.kActiveColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppConstant.kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style: AppTextStyle.h2,
                    ),
                    const SizedBox(height: 7),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        chat.lastMessage,
                        style: AppTextStyle.h3,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(opacity: 0.7, child: Text(chat.time))
          ],
        ),
      ),
    );
  }
}
