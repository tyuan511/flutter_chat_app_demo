import 'package:chatui/constants.dart';
import 'package:chatui/models/chat.dart';
import 'package:chatui/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage(chat.image),
          ),
          const SizedBox(
            width: kDefaultPadding * 0.75,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                chat.time,
                style: const TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
