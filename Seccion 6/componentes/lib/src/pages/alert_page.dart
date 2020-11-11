import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () {
            _mostrarAlert(context);
          },
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Hi'),
            content: Column(
              children: [
                Text('Hola a todos'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    return Navigator.of(context).pop();
                  },
                  child: Text('Cancelar')),
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok')),
            ],
          );
        });
  }
}
