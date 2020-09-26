import 'package:flutter/material.dart';

class SwitchAndCheckBoxScreen extends StatefulWidget {
  @override
  _SwitchAndCheckBoxScreenState createState() =>
      _SwitchAndCheckBoxScreenState();
}

class _SwitchAndCheckBoxScreenState extends State<SwitchAndCheckBoxScreen> {
  bool valorSwitch = false;
  bool valorCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Switches and Checkboxes'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            Switch(
                value: valorSwitch,
                onChanged: (bool valor) {
                  setState(() {
                    valorSwitch = valor;
                  });
                }),
            Checkbox(
              value: valorCheck,
              onChanged: (bool valor) {
                setState(() {
                  valorCheck = valor;
                });
              },
            ),
          ],
        )));
  }
}
