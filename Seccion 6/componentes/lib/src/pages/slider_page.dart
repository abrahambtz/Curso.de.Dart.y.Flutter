import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 60.00;
  bool _bloquearCheck = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Slider Page'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.00),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'Tamaño de la imagen',
        //divisions: 10,
        value: _valorSlider,
        min: 10.0,
        max: 110.0,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  print(valor);
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://assets.stickpng.com/images/5847f32fcef1014c0b5e4877.png'),
      width: _valorSlider + 200,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    // value: _bloquearCheck,
    // onChanged: (valor) {
    //   setState(() {
    //     _bloquearCheck = valor;
    //   });
    // },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(
          () {
            _bloquearCheck = valor;
          },
        );
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(
          () {
            _bloquearCheck = valor;
          },
        );
      },
    );
  }
}
