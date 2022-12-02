import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  final int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Menu',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}