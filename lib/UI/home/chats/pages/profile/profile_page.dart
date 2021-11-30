import 'package:flutter/material.dart';
import 'package:messeneger_postgres/generated/l10n.dart';
import 'package:messeneger_postgres/global/theme/text_style.dart';

import 'profile_widget/option_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/catmem.jpg'),
                ),
              ),
            ),
            Text('Ilya Danilov', style: AppTextStyle.h2.copyWith(fontSize: 29)),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
              ),
              child: Column(
                children: [
                  OptionButton(
                    icon: Icons.theater_comedy_outlined,
                    text: S.of(context).profile_btn1,
                    press: () {},
                  ),
                  const Divider(),
                  OptionButton(
                    icon: Icons.description_outlined,
                    text: S.of(context).profile_btn2,
                    press: () {},
                  ),
                  const SizedBox(height: 2, child: Divider()),
                  OptionButton(
                    icon: Icons.info_outlined,
                    text: S.of(context).profile_btn3,
                    press: () {},
                  ),
                ],
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
