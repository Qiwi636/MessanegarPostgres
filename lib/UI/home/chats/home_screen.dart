import 'package:flutter/material.dart';
import 'package:messeneger_postgres/UI/home/chats/tabs/tab_chats.dart';
import 'package:messeneger_postgres/UI/home/chats/tabs/tab_profile.dart';
import 'package:messeneger_postgres/generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 1: Business'),
    TabChats(),
    TabProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    List<String> _labelOptions = [
      S.of(context).home_tab1,
      S.of(context).home_tab2,
      S.of(context).home_tab3
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: SizedBox(
            width: double.infinity,
            child: Text(
              _labelOptions[_selectedIndex],
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.6),
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey.shade600,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.book_outlined),
                label: S.of(context).home_tab1),
            BottomNavigationBarItem(
                icon: const Icon(Icons.message_outlined),
                label: S.of(context).home_tab2),
            BottomNavigationBarItem(
                icon: const CircleAvatar(
                  radius: 14,
                  backgroundImage: AssetImage('assets/images/catmem.jpg'),
                ),
                label: S.of(context).home_tab3),
          ],
        ),
      ),
    );
  }
}
