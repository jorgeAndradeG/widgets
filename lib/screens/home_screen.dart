import 'package:flutter/material.dart';
import 'package:widgets/models/data_model.dart';
import 'package:widgets/services/data_service.dart';
import 'package:widgets/utils/icono_string_util.dart';

class HomeScreen extends StatelessWidget {
  final DataService data = DataService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: data.cargarDatos(),
        builder: (context, AsyncSnapshot<Data> snapshot) {
          if (snapshot.hasData) {
            return ListView(
                // children: _crearLista(snapshot.data, context),
                children: snapshot.data.rutas
                    .map((ruta) => ListTile(
                        title: Text(ruta.texto),
                        leading: getIcon(
                            ruta.icon), //elemento al lado izquierdo del listile
                        trailing: Icon(Icons
                            .keyboard_arrow_right), //elemento al lado derecho del listile
                        onTap: () => Navigator.pushNamed(context, ruta.ruta)))
                    .toList()); //el E es un item y se retorna un widget(ListTile)
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  List<Widget> _crearLista(Data data, BuildContext context) {
    final List<Widget> items = [];
    data.rutas.forEach((item) {
      final widgetTemp = ListTile(
          title: Text(item.texto),
          leading: getIcon(item.icon), //elemento al lado izquierdo del listile
          trailing: Icon(Icons
              .keyboard_arrow_right), //elemento al lado derecho del listile
          onTap: () => Navigator.pushNamed(context, item.ruta));
      items.add(widgetTemp);
    });
    return items;
  }
}
