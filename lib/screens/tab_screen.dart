import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  final tabs = <Tab>[
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
    Tab(text: 'Tab 3')
  ];

  final tabPages = <Widget>[
    Center(child: Icon(Icons.sentiment_very_dissatisfied, size: 50)),
    Center(child: Text('Este es el Tab 2')),
    Center(
      child: CircleAvatar(
        child: Text('JA'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Tabs'),
            ),
            body: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.teal,
                  tabs: tabs,
                ),
                Expanded(child: TabBarView(children: tabPages))
              ],
            )));
  }
}
