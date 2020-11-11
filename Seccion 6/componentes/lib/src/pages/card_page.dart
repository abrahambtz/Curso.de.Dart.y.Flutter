import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Page'),
      ),
      body: ListView(
        children: [
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10.0,
          ),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blueAccent,
            ),
            title: Text('Tarjeta Tipo 1.'),
            subtitle: Text(
                'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.'),
          ),
          Row(
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok')),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.DPlrMcDk_4Pf3cVxmCTx7wHaFf%26pid%3DApi&f=1')),
          Container(
            child: Text('Titulo de la imagen'),
            padding: EdgeInsets.all(10.00),
          ),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(0, 8))
          ]),
    );
  }
}
