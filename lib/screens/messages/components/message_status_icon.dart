import 'package:chatui/constants.dart';
import 'package:chatui/models/chat_message.dart';
import 'package:flutter/material.dart';

class MessageStatusIcon extends StatelessWidget {
  const MessageStatusIcon({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    getDot() {
      switch (message.messageStatus) {
        case MessageStatus.notSent:
          return {"color": kErrorColor, "icon": Icons.close};
        case MessageStatus.viewed:
          return {"color": kPrimaryColor, "icon": Icons.done};
        case MessageStatus.notView:
        default:
          return {"color": Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.1), "icon": null};
      }
    }

    dynamic dot = getDot();

    return Container(
      width: 12,
      height: 12,
      margin: const EdgeInsets.only(left: kDefaultPadding / 2),
      decoration: BoxDecoration(color: dot["color"], shape: BoxShape.circle),
      child: dot["icon"] != null
          ? Icon(
              dot["icon"],
              color: Theme.of(context).scaffoldBackgroundColor,
              size: 8,
            )
          : Container(),
    );
  }
}
