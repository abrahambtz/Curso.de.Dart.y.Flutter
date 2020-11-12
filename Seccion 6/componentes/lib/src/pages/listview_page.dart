import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _listaNumeros = [10, 20, 30, 40, 50];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listaNumeros[index];
        // print("$index");
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          image: NetworkImage("https://picsum.photos/500/300/?image=$imagen"),
        );
      },
      itemCount: _listaNumeros.length,
    );
  }

  void _agregar10() {
    return;
  }
}
