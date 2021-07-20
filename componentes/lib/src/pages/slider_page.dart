import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (_blockCheck) ? null : ( value ){
        setState(() {
          _valorSlider = value;
        });
      }
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('http://pngimg.com/uploads/batman/batman_PNG52.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    /* return Checkbox(
      value: _blockCheck, 
      onChanged: ( value ) {
        setState(() {
          _blockCheck = value!;
        });
      }
    ); */
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _blockCheck, 
      onChanged: ( value ) {
        setState(() {
          _blockCheck = value!;
        });
      }
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _blockCheck, 
      onChanged: ( value ) {
        setState(() {
          _blockCheck = value;
        });
      }
    );
  }
}