import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Cards'),
      ),
      body:ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget> [
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
           _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
           _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
           _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
           _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color:Colors.blue),
            title: Text('Querida Noelia, sos mi adicciòn.'),
            subtitle: Text('Mi cuerpo es libre, mi mente es presa, mi alma complice y mi corazòn victima.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child:Text('Cancelar'),
                onPressed: (){},
              ),
              TextButton(
                child:Text('Ok'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://p4.wallpaperbetter.com/wallpaper/673/620/57/6000x4000-px-abstract-d-graphics-wallpaper-preview.jpg'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
            ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('El Principio es el Final, el Final es el Principio'),
          ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color :Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color :Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}