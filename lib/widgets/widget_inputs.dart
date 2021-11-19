import 'package:flutter/material.dart';

// class Input extends StatefulWidget {
//   const Input({Key? key}) : super(key: key);

//   @override
//   _InputState createState() => _InputState();
// }

// class _InputState extends State<Input> {
//   String username = "";
//   @override
//   Widget build(BuildContext context) {
//     return const TextField(
//       decoration: InputDecoration(
//           border: OutlineInputBorder(), hintText: "Nome do usuário"),
//     );
//   }
// }

class Input extends StatelessWidget {
  const Input({Key? key, required this.callback}) : super(key: key);
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String value) {
        callback(value);
      },
      decoration: const InputDecoration(
          border: OutlineInputBorder(), hintText: "Nome do usuário"),
    );
  }
}
