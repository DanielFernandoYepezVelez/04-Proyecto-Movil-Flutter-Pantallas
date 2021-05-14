import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/img/landscape.jpg'),
          ),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
                'Dolor quis aliqua amet ut veniam do adipisicing aute ipsum dolor elit aute sint. Non deserunt reprehenderit adipisicing magna aliqua amet ipsum nisi in ea aute nostrud ad minim. Reprehenderit tempor eiusmod duis quis duis dolor sit mollit nostrud esse officia ea sit ex. Ea aliqua nostrud cupidatat tempor. Eiusmod velit et cillum in dolore pariatur adipisicing sunt dolor mollit pariatur do aliqua magna.'),
          ),
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
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschine Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          /* Va A Ocupar El Espacio Necesario Para Expandirse Y Se Para Otros Widgets */
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
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
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomButton(icon: Icons.call, text: 'call'.toUpperCase()),
        CustomButton(icon: Icons.send, text: 'router'.toUpperCase()),
        CustomButton(icon: Icons.share, text: 'share'.toUpperCase()),
      ]),
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
        Icon(
          this.icon,
          color: Colors.blue,
          size: 35,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
