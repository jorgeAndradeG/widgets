import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/5/55/Spanish-Kmines.png'),
          ),
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('assets/images/jar-loading.gif'),
            backgroundColor: Colors.white10,
          ),
          CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            child: Text('Jorge'),
          )
        ],
      )),
    );
  }
}
