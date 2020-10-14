import 'dart:convert';

void main() {
  //Capitulo 8
  print('Hola mundo');
  var name = 5;
  print(name);
  print('Hola mundo $name');
  String nombre = 'hola';
  print(nombre.length);
  //Capitulo 9
  //Numeros

  int numerosEnteros = 10;
  double pi = 3.1416;
  var ejemplo = 3.1;
  print('$numerosEnteros - $pi' + ' $ejemplo');

  nombre = 'Abraham';
  print(nombre[nombre.length - (nombre.length - 2)]);

  //Capitulo 10

  bool estado = false;
  if (!estado) {
    print('Esta apagado :C');
  } else
    print('Esta encendido C:');

  //Capitulo 11
  //Una lista es un conjunto de objetos que tienen relacion entre si.
  //Se pueden crear listas dinamicas sin definir que tipo de objeto es.
  List listaDinamica = [1, 2, 3, 4, 5];
  print(listaDinamica);
  listaDinamica.add(6);
  listaDinamica.add('Hola Humanos');
  print(listaDinamica);

  List<int> numeros = [
    1,
    2,
    3
  ]; //Una lista tambien puede ser definida aceptando el mismo tipo de dato.
  print(numeros);

  List<int> listaDefinidaPorTamano = List(10);
  print(listaDefinidaPorTamano);
  List<List<int>> coleccionDeListasDeEnterosDefinida = List(4);
  print(coleccionDeListasDeEnterosDefinida);
  List<List<int>> coleccionDeListasDeEnteros = [
    [1, 2],
    [2, 3]
  ];
  print(coleccionDeListasDeEnteros);

  //Capitulo 12
  //No se puede definir el tipo de dato que tenga que recibir.
  Map persona = {'nombre': 'Abraham', 'edad': 21, 'soltero': false};
  print(persona);
  Map<String, dynamic> persona1 = {
    'nombre': 'Abraham_Baltazar',
    'edad': 21,
    'soltero': false
  };
  print(persona1);
  print(persona1['nombre']);
  String propiedad = 'edad';
  print(persona1[propiedad]);
  Map<int, dynamic> personas = {1: 'abraham', 2: 'roberto', 9: 'angel'};
  print(personas[9]);
  personas.addAll({4: 'Katya'});
  print(personas[4]);

  //Capitulo 13
  saludar();
  String saludoEspanol = 'Hola';
  String mensaje = ejemploFuncion(texto: saludoEspanol, nombre: nombre);
  print(mensaje);

  //Capitulo 14
  final soprteTecnico = new Heroe(
      nombre: 'Roberto',
      poder:
          'Transparente'); // Es opcional colocar new en la v2 de Dart ya no es necesario sin embargo permite identificar una instancia de Dart.
  //final es como una constante tiene parecido a const la diferencia radica en la compilacion.
  //Capitulo 15 Se encuentra al final
  //Capitulo 16
  print(soprteTecnico);

  final jotoJson = '{"nombre":"Logan", "poder":"Regeneracion"}';
  Map eresUnJson = json.decode(jotoJson);
  print(eresUnJson);
  final elHeroe = new Heroe2.soyUnContructorConUnaTag(eresUnJson);

  print(elHeroe.nombreDeClase + '' + elHeroe.poderDeClase);

  //Capitulo 17 Getters y Setters.
  capitulo17();
  //Capitulo 18 Clases Abstractas.
  capitulo18();
  //Capitulo 19.  Extend
  capitulo19();
  //Capitulo 20
  //Clase de mixins
  mixins();
  capitulo20();
  //Capitulo 21
  capitulo21();
  
  
  
  
  
}

//Capitulo 13

void saludar() {
  print('Hola Bienvenidos!');
}

String saludar1() {
  return 'Hola Bienvenidos!';
}

String ejemploFuncion({String nombre, String texto}) {
  return texto + ' ' + nombre;
}

String ejemploFuncion2({String nombre, String texto}) => texto + ' ' + nombre;
//-----------------------------------------------------------------------

class Heroe {
  String nombre;
  String poder;
  /* Forma Tradicional
  Heroe({String nombre, Sring poder}){
    this.nombre = nombre;
    this.poder = poder;
  }
    String toString() => '${this.nombre} tiene el poder de ser ${this.poder}';
  */
  //Clase 15
  //Se reduce lo anterior de la clase 14 a este pequeño bloque.
  Heroe({this.nombre, this.poder});
  String toString() => '$nombre tiene el poder de ser $poder';
}

//Clase
class Heroe2 {
  String nombreDeClase;
  String poderDeClase;
  Heroe2({this.nombreDeClase, this.poderDeClase});
  Heroe2.soyUnContructorConUnaTag(Map quieroUnJson) {
    nombreDeClase = quieroUnJson['nombre'];
    poderDeClase = quieroUnJson['poder'];
  }
}

//Capitulo 17 Get y Set
//Get funciona para obtener informacion de una clase
//Set funciona para asignar valores dentro de una clase.

void capitulo17() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print(cuadrado);
  print('Area: ${cuadrado.area}');
}

class Cuadrado {
  //Si se coloca un _ antes de nombre una variable en un clase esta se convertira en "PRIVADA". Solo es visible dentro de la clase.
  double _lado;
  double _area;
  set lado(double valor) {
    if (valor <= 0) {
      throw ('El lado no puede ser menor o igual a 0.');
    }
    _lado = valor;
  }

  toString() =>
      'Lado: $_lado'; //Imprimes sin llamar en la funcion print(cuadrado).

  double get area => _lado * _lado;
}
//-------------------------------------------------------------------

//Clase 18.
void capitulo18() {
  //final perro = new Animal();
  //Las clases abstractas no pueden ser incializadas.

  final perro = new Perro();
  perro.emitirSonido();
}

abstract class Animal {
  int patas;
  void emitirSonido();
}

class Perro implements Animal {
  int patas;
  String tamano;
  void emitirSonido() => print('Guaauu!');
}

//Clase 19.
void capitulo19() {
  final superhombre = new Heroes();
  superhombre.nombre = 'The Abraham.';
  final payaso = new Villanos();
  payaso.nombre = 'Osito Cariñoso.';
  print(superhombre.nombre);
}

abstract class Personaje {
  String poder;
  String nombre;
}

class Heroes extends Personaje {
  int valentia;
}

class Villanos extends Personaje {
  int maldad;
}

//Clase de Mixins
class A {
  String getMessage() => 'A';
}

class B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}

class AB extends P with A, B {}

class BA extends P with B, A {}

mixins() {
  String result = '';

  AB ab = AB();
  result += ab.getMessage();

  BA ba = BA();
  result += ba.getMessage();

  print(result);
  
  print(ab is P);
  print(ab is A);
  print(ab is B);
}

//Capitulo 20
void capitulo20(){
  final pato = new Pato();
  pato.nadar();
  pato.caminar();
  pato.volar();
  
  
  
}
abstract class Animales{}

abstract class Mamifero extends Animales{}
abstract class Ave extends Animales{}
abstract class Pez extends Animales{}

abstract class Volador{
  void volar()=>print("Estoy volando!!");
}
abstract class Caminante{
  void caminar()=>print("Estoy caminando!!");
}
abstract class Nadador{
  void nadar()=>print("Estoy nadando!!");
}


class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}
class Pezvolador extends Pez with Volador, Nadador{}

void capitulo21(){
  
}




