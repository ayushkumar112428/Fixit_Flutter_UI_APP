import 'package:fixit/components/service_card.dart';
import 'package:fixit/data/service_data.dart';
import 'package:flutter/material.dart';

class ServiceCardLayout extends StatelessWidget {
  final String title;
  final List<ServiceIcons> listofdata;
  const ServiceCardLayout(
      {super.key, required this.title, required this.listofdata});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listofdata.length,
              itemBuilder: (context, index) {
                return ServiceCard(
                    title: listofdata[index].title.toString(),
                    imageUrl: listofdata[index].imageUrl.toString());
              },
            ),
          ),
        ],
      ),
    );
  }
}
