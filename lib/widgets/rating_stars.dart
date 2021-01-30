import 'package:flutter/material.dart';
class RatingStars extends StatelessWidget {
  final int stars;
  RatingStars(this.stars);
  @override
  Widget build(BuildContext context) {
    String s = '';
    for(int i = 0  ; i < stars; i++ ){
        s += '⭐ ';
    }
    s.trim();
    return Text(s);
  }
}

