import 'package:chatui/constants.dart';
import 'package:chatui/models/chat.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key, required this.chat, required this.onTap});

  final Chat chat;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.75, horizontal: kDefaultPadding),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Theme.of(context).scaffoldBackgroundColor, width: 3),
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat.name,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Opacity(opacity: 0.6, child: Text(chat.time))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Opacity(
                      opacity: 0.6,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
