import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: const [
          Image(image: AssetImage('assets/landscape.jpeg')),
          _Tittle(),
          _Actions()
        ],
      )),
    );
  }
}

class _Tittle extends StatelessWidget {
  const _Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black38),
              )
            ],
          ),
          Row(
            children: const [Icon(Icons.star), Text('41 ')],
          )
        ],
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _ActionIcon(icon: Icons.phone, texto: 'Call'),
        _ActionIcon(icon: Icons.near_me, texto: 'Call'),
        _ActionIcon(icon: Icons.share, texto: 'Call'),
      ],
    );
  }
}

class _ActionIcon extends StatelessWidget {
  const _ActionIcon({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);
  final IconData icon;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(texto)],
    );
  }
}
