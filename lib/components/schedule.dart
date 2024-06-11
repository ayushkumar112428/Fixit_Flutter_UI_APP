import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class ScheduleStyle extends StatelessWidget {
  final String icons;
  final String title;
  final double amount;
  final String date;
  final String time;
  final String name;
  const ScheduleStyle({
    super.key,
    required this.icons,
    required this.title,
    required this.amount,
    required this.date,
    required this.name, required this.time,
  });

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
              const Text("Arrival time"),
              Text(time),
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
          Container(
      height: 58,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.blue,)
      ),
      child: Center(
        child: Text(
          "Cancle Booking",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: blueColors),
        ),
      ),
    )
        ],
      ),
    );
  }
}
