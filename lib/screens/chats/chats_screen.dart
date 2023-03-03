import 'package:chatui/constants.dart';
import 'package:chatui/theme.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.person_add_alt_1),
      ),
      bottomNavigationBar: buildNavigationBar(),
    );
  }

  BottomNavigationBar buildNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          const BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          const BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 14,
                child: Image.asset('assets/images/user.png'),
              ),
              label: "Profile"),
        ]);
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text('Chats'),
      backgroundColor: kPrimaryColor,
      actions: [
        IconButton(
            onPressed: () {
              currentTheme.toggleTheme();
            },
            icon: currentTheme.brightness == Brightness.light
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search))
      ],
    );
  }
}
