import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String title;
  final bool select;
  const TextContainer({super.key, required this.select, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 100,
      decoration: BoxDecoration(
        color: (select)? blueColors : Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          )),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: (select)? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
