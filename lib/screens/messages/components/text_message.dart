import 'package:chatui/constants.dart';
import 'package:chatui/models/chat_message.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1), borderRadius: BorderRadius.circular(20)),
      child: Text(
        message.text,
        style: TextStyle(
            color: message.isSender ? Colors.white : Theme.of(context).textTheme.bodyLarge?.color, fontSize: 14),
      ),
    );
  }
}
