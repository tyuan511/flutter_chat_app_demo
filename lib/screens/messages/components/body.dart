import 'package:chatui/constants.dart';
import 'package:chatui/models/chat_message.dart';
import 'package:flutter/material.dart';
import 'chat_input.dart';
import 'message.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          itemCount: demeChatMessages.length,
          itemBuilder: (context, index) => Message(message: demeChatMessages[index]),
        )),
        const ChatInput()
      ],
    );
  }
}
