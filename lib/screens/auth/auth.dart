import 'package:chatui/components/primary_button.dart';
import 'package:chatui/constants.dart';
import 'package:chatui/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                Theme.of(context).brightness == Brightness.light
                    ? 'assets/images/Logo_light.png'
                    : 'assets/images/Logo_dark.png',
                width: 144,
              ),
              const Spacer(),
              PrimaryButton(
                  text: 'Sign In',
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsScreen()));
                  }),
              const SizedBox(
                height: kDefaultPadding,
              ),
              PrimaryButton(
                text: 'Sign Up',
                press: () {},
                color: Theme.of(context).colorScheme.secondary,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
