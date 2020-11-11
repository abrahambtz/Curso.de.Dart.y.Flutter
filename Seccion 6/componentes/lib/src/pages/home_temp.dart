import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes App 2.'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: _crearListaCorta(),
      ),
    );
  }

  /* List<Widget> _crearLista() {
    //Creamos un metodo que devuleva un lista de Widget
    List<Widget> lista = new List<Widget>(); //Creamos un obejeto de tipo
    //"Lista", no se define el largo por lo cual es una lista dinamica.
    for (String opt in opciones) {
      //Cada interaccion va a depender de "opciones" declarada en la linea 4.
      final tempWidget = ListTile(
        //Es un widget temporal
        title: Text(opt),
      );
      lista //Operado de cascada.
        ..add(
            tempWidget) //Toma el widget temporal y lo inserta en nuestro objeto lista
        ..add(Divider(
          //Agregamos un divider en nuestro objeto.
          height: 10,
          color: Colors.amber,
        ));
    }
    return lista; //Retorna una lista
  }
*/
  List<Widget> _crearListaCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('Cualquier cosa.'),
            leading: Icon(Icons.face),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            //Agregamos un divider en nuestro objeto.
            height: 10,
            color: Colors.amber,
          ),
        ],
      );
    }).toList();
  }
}
