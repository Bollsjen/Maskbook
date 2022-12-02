import 'package:flutter/material.dart';
import 'package:maskbook/components/NewPost.dart';
import 'package:maskbook/components/PersonalPost.dart';
import 'package:maskbook/components/Stories.dart';

class Feed extends StatelessWidget {
  Feed({super.key});

  final int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewPost(),
        Stories(),
        PersonalPost(),
        PersonalPost(),
        PersonalPost(),
      ],
    );
  }
}