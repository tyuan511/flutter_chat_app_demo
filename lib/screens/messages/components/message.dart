import 'package:chatui/constants.dart';
import 'package:chatui/models/chat_message.dart';
import 'package:flutter/material.dart';

import 'audio_message.dart';
import 'message_status_icon.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message});

  final ChatMessage message;

  Widget buildMessage() {
    switch (message.messageType) {
      case ChatMessageType.text:
        return TextMessage(message: message);
      case ChatMessageType.audio:
        return AudioMessage(message: message);
      case ChatMessageType.video:
        return VideoMessage(message: message);
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender)
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
              radius: 16,
            ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          buildMessage(),
          if (message.isSender)
            MessageStatusIcon(
              message: message,
            )
        ],
      ),
    );
  }
}
