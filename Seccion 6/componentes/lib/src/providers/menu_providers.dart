import 'package:flutter/services.dart'
    show rootBundle; //OBtenemos  la funcion rootBlunder de el paquete service
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = []; //Lista vacia dinamica

  _MenuProvider() {
    //Constructor
    cargarData(); //Llamamos el metodo cargarData
  }
//Este es un Future Builder.
  Future<List<dynamic>> cargarData() async {
    //Creamos el metodo
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
    //Regresa un Future
  }
}

final menuProvider =
    new _MenuProvider(); //Instacia, solo se expone la instancia _MenuP por que es privada.
