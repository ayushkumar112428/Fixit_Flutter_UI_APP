import 'package:flutter/material.dart';

class GoogleOrFacebook extends StatelessWidget {
  final String title;
  const GoogleOrFacebook({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final double lineSize = MediaQuery.of(context).size.width * 0.38;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: lineSize,
              child: const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            const Text(
              "or",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: lineSize,
              child: const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            gfBox("Google", "assets/logo/Google.png"),
            gfBox("Facebook", "assets/logo/Facebook.png"),
          ],
        ),
      ],
    );
  }
  Widget gfBox(String title,String img){
    return Container(
      width: 160,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
