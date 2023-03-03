import 'package:chatui/screens/welcome/welcome_screen.dart';
import 'package:chatui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatUI',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: currentTheme.brightness == Brightness.light ? ThemeMode.light : ThemeMode.dark,
      home: const WelcomeScreen(),
    );
  }
}
