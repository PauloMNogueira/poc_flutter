import 'package:flutter/material.dart';
import 'package:my_app/screens/user_screen.dart';
import 'package:my_app/widgets/widget_button.dart';
import 'package:my_app/widgets/widget_inputs.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _username = "";
  set username(String value) => setState(() {
        _username = value;
      });
  @override
  Widget build(BuildContext context) {
    handleClicks(context) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UserScreen(username: _username)));
    }

    handleChangeUsername(val) {
      setState(() => _username = val);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Input(
                  callback: (String val) => handleChangeUsername(val),
                ),
              ),
              Button(
                  placeholder: "Pesquisar",
                  loading: _username.isEmpty ? true : false,
                  handleClick: () {
                    handleClicks(context);
                  })
            ],
          ),
        ));
  }
}
