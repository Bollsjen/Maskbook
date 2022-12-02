import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

Route createRoute(StatefulWidget page, int fromPage, int toPage){

  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset.zero;

        if(fromPage > toPage){
          begin = Offset(-1.0, 0.0);
        }else{
          begin = Offset(1.0, 0.0);
        }

        const end = Offset.zero;
        const curve = Curves.ease;
        
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
            position: animation.drive(tween),
          child: child,
        );
      }
  );
}