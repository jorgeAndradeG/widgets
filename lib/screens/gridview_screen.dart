import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(14),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, int index) {
                return Card(
                    color: index.isOdd
                        ? Colors.yellow
                        : Colors.pink, //se cumple.no se cumple
                    borderOnForeground: true,
                    child: Column(children: [
                      Text(
                        'Titulo',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text('Contenido'),
                      FlatButton(
                          color: Colors.teal,
                          onPressed: () {},
                          child: Text('Aceptar'))
                    ]));
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
