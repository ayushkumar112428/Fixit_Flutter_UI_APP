import 'package:fixit/components/service_provider_card.dart';
import 'package:fixit/data/service_provider_data.dart';
import 'package:fixit/screens/services_provider/selected_service_provider.dart';
import 'package:flutter/material.dart';

class ServiceProviderLayout extends StatelessWidget {
  final String title;
  final String icon;
  final List<ServiceProvider> listofdata;
  const ServiceProviderLayout(
      {super.key,
      required this.title,
      required this.icon,
      required this.listofdata});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(icon),
                ),
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
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedServiceProvider(title: title, listofdata: listofdata,)));
              },
              child: const Text(
                'View all',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listofdata.length,
            itemBuilder: (context, index) {
              return ServiceProviderCard(
                  name: listofdata[index].name.toString(),
                  profession: listofdata[index].profession.toString(),
                  rating: listofdata[index].rating.toString(),
                  imageUrl: listofdata[index].imageUrl.toString());
            },
          ),
        ),
      ],
    );
  }
}
