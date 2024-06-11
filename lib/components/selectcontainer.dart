import 'package:flutter/material.dart';

class SelectContainer extends StatelessWidget {
  final String title1;
  final String title2;
  final String img;
  final bool selct;
  const SelectContainer({super.key, required this.title1, required this.title2, required this.img, required this.selct});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,height: 152,
      decoration: BoxDecoration(
        color: (!selct)? Colors.transparent : const Color(0xFFE7F1FC),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFF0773DA)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title1,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
              Text(title2,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
            ],
          ),
          Image.asset(img),
        ],
      ),
    );
  }
}
