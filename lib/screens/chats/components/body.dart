import 'package:chatui/components/filled_outline_button.dart';
import 'package:chatui/constants.dart';
import 'package:chatui/models/chat.dart';
import 'package:chatui/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recent Message'),
              const SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, index) => ChatCard(
            chat: chatsData[index],
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen(chat: chatsData[index])));
            },
          ),
        ))
      ],
    );
  }
}
