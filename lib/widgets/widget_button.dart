import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.placeholder,
      required this.handleClick,
      required this.loading})
      : super(key: key);
  final String placeholder;
  final VoidCallback handleClick;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? null : handleClick,
      child: Text(placeholder),
    );
  }
}
