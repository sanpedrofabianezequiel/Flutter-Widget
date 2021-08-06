import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 80.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children : <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImage()
            ),
          ],  
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value : _valorSlider,
      min :  10.0,
      max : 400.0,
      activeColor:Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      onChanged: (_bloquearCheck) ? null : (valor){
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImage() {
    return Image(
      image: NetworkImage('https://images2.alphacoders.com/907/907916.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain
    );
  }

 Widget _checkBox() {
   return CheckboxListTile(
     value: _bloquearCheck, 
     title: Text('Bloquear slider'),
     onChanged: (valor){
       setState(() {
         _bloquearCheck = valor!;
       });
     },
  );
 }

  Widget _crearSwitch() {
    return SwitchListTile(
      title:  Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() { 
          _bloquearCheck = valor;
        });
      }
    );
  }
}