import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              'Aute et sit velit occaecat voluptate veniam incididunt amet. Consequat eu ullamco consectetur commodo ad qui ex sunt enim. Sit Lorem laboris excepteur fugiat. Officia aliqua tempor amet reprehenderit velit Lorem voluptate aute amet consectetur aute esse mollit. Duis nostrud mollit occaecat laborum amet sit sint est aute culpa ad commodo labore nisi. Nisi consectetur eiusmod eiusmod ullamco enim esse.'
            ),
          )
        ],
      ),
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold )),
              SizedBox(height: 5),
              Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45 )),
            ],
          ),
          Spacer(),
          Icon( Icons.star, color: Colors.red ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton( icon: Icons.call, text: 'CALL'),
          CustomButton( icon: Icons.location_pin, text: 'ROUTE'),
          CustomButton( icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color: Colors.blue ),
        SizedBox(height: 10),
        Text( this.text, style: TextStyle( color: Colors.blue ))
      ],
    );
  }
}