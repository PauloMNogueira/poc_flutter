import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
