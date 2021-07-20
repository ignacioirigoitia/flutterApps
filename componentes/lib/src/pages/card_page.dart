import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      // clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue, ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la descripción de la tarjeta para que ustedes vean para tener una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
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
            image: NetworkImage('https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea de que poner'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2, 10)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card
      ),
    );
  }

}