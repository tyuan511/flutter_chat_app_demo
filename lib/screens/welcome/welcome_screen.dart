import 'package:chatui/constants.dart';
import 'package:chatui/screens/auth/auth.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset('assets/images/welcome_image.png'),
          const Spacer(
            flex: 3,
          ),
          Text(
            'Welcome to our freedom\nmessaging app',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Text(
            'Freedom talk any person of your\nmother language',
            style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.4)),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          FittedBox(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Auth(),
                      ));
                },
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    Icon(Icons.arrow_right_alt, color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.8))
                  ],
                )),
          )
        ],
      )),
    );
  }
}
