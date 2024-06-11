import 'package:fixit/components/button_style.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class PaidBoxStyle extends StatelessWidget {
  final String icons;
  final String title;
  final double amount;
  final String date;
  final String name;
  final bool pay;
  const PaidBoxStyle({super.key, required this.pay, required this.amount, required this.date, required this.name, required this.icons, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 214, 226, 236),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(icons),
              const SizedBox(
                width: 12,
              ),
              Text(
                title,
                style: textStyle,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Amount to pay"),
              Text(
                "\$$amount",
                style: textStyle.copyWith(color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Booking date"),
              Text(date),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Plumber name"),
              Text(
                name,
                style: textStyle.copyWith(color: Colors.blue, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          (pay)
              ? ButtonStyles(title: "Pay now", colors: blueColors)
              : const SizedBox(
                  height: 1,
                ),
        ],
      ),
    );
  }
}
