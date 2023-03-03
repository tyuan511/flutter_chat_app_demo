import 'package:chatui/constants.dart';
import 'package:chatui/models/chat_message.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1), borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : kPrimaryColor,
          ),
          const SizedBox(
            width: kDefaultPadding / 4,
          ),
          buildProgressBar(),
          const SizedBox(
            width: kDefaultPadding / 4,
          ),
          Text(
            '0:37',
            style: TextStyle(fontSize: 12, color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6)),
          )
        ],
      ),
    );
  }

  Widget buildProgressBar() {
    return Expanded(
        child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 2,
          color: (message.isSender ? Colors.white : kPrimaryColor).withOpacity(0.4),
        ),
        Positioned(
          left: 0,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(shape: BoxShape.circle, color: (message.isSender ? Colors.white : kPrimaryColor)),
          ),
        )
      ],
    ));
  }
}
