import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:messeneger_postgres/generated/l10n.dart';

import 'UI/auth/auth_screen.dart';
import 'UI/home/chats/home_screen.dart';
import 'UI/reg/reg_screen.dart';
import 'UI/reset/reset_page.dart';
import 'global/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const AuthWidget(),
        '/register': (context) => const RegWidget(),
        '/resetPass': (context) => const ResetWidget(),
        '/home': (context) => const HomePage(),
      },
      title: 'Material App',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
      ],
      // debugShowCheckedModeBanner: false,
    );
  }
}
