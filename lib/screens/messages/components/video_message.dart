import 'package:chatui/constants.dart';
import 'package:chatui/models/chat_message.dart';
import 'package:flutter/material.dart';

class VideoMessage extends StatelessWidget {
  const VideoMessage({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(alignment: Alignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/Video Place Here.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
