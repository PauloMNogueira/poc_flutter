import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/user_screen.dart';
import 'package:my_app/widgets/widget_button.dart';
import 'package:my_app/widgets/widget_inputs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/user": (context) => const UserScreen(
              username: "",
            )
      },
    );
  }
}
