import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQGPj5EwJ0xHsA/profile-displayphoto-shrink_200_200/0/1618785717895?e=1629936000&v=beta&t=vHNzy1pIWYhXe4l4fESXGYjs2e0FbmWxXEAg5u1lMXw'),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.logout ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://vocescriticas1.cdn.net.ar/252/vocescriticas1/images/59/12/591210_935f3dd35bc21c936bafd3498d8cd1418420d359404024567b5aefda1231af24/lg.webp'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}