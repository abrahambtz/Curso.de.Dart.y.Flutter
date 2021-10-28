import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  //_ContadorPageState Fuerzas a que la clase se privada
  final _estiloTexto = new TextStyle(fontSize: 25);
  final _estiloColor = new Color(0xFFFA0000);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador, App 1 - V2'),
          centerTitle: true,
          elevation: 10.00,
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numero de cick!',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                '$_contador',
                style: _estiloTexto,
              )
            ],
          ),
        ),
        floatingActionButton: _crearBottones()
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }

  Widget _crearBottones() {
    return Row(
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
          backgroundColor: _estiloColor,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
          backgroundColor: _estiloColor,
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
          backgroundColor: _estiloColor,
        ),
      ],
    );
  }

  void _add() => setState(() => _contador++);
  void _sustraer() => setState(() => _contador--);
  void _reset() => setState(() => _contador = 0);
}
