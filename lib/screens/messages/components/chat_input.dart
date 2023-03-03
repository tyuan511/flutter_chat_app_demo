import 'package:chatui/constants.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor, boxShadow: [
        BoxShadow(offset: const Offset(0, 4), blurRadius: 32, color: const Color(0xFF087949).withOpacity(0.08))
      ]),
      child: SafeArea(
          child: Row(
        children: [
          const Icon(
            Icons.mic,
            color: kPrimaryColor,
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
              child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.05), borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Icon(Icons.sentiment_satisfied_alt_outlined,
                    color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.6)),
                const SizedBox(
                  width: kDefaultPadding / 4,
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(hintText: "Type message", border: InputBorder.none),
                )),
                Icon(Icons.attach_file_outlined, color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.6)),
                const SizedBox(
                  width: kDefaultPadding / 4,
                ),
                Icon(Icons.camera_alt_outlined, color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.6)),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
