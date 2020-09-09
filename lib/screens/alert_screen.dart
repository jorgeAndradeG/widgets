import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alertas'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible:
                          false, //QUISE DEJARLO EN FALSE PARA DEMOSTRAR QUE LOS BOTONES CUMPLEN LO QUE SE PIDE
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Alerta'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Esto es una alerta'),
                              FlutterLogo(
                                size: 73.0,
                              )
                            ],
                          ),
                          actions: [
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancelar')),
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Ok'))
                          ],
                          elevation: 50.0,
                        );
                      });
                },
                child:
                    const Text('Abrir Alert', style: TextStyle(fontSize: 17)),
              ),
            ])));
  }
}
