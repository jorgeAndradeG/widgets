import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tarjetas - Cards'),
          centerTitle: true,
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Card(
                margin: EdgeInsets.all(20),
                elevation: 15.0,
                borderOnForeground: true,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Column(
                              children: [
                                FadeInImage(
                                  placeholder: AssetImage(
                                      'assets/images/jar-loading.gif'),
                                  image: // NetworkImage(
                                      //'https://viajes.nationalgeographic.com.es/medio/2018/08/08/age-qpx-150805115__800x800.jpg'),
                                      //)
                                      AssetImage('assets/images/py.png'),
                                  height: 300.0,
                                ),
                                Container(
                                  height: 20.0,
                                )
                              ],
                            ),
                            Positioned(
                                bottom: 0.0,
                                right: 20.0,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.red,
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                )),
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Card Title',
                                      style: TextStyle(fontSize: 30)),
                                  Text('I am a very simple card.')
                                ]))
                      ]),
                )),
          ),
        ));
  }
}
