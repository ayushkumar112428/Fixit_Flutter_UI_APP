import 'package:fixit/components/service_card.dart';
import 'package:fixit/components/service_provider_card.dart';
import 'package:fixit/data/service_provider_data.dart';
import 'package:fixit/screens/services/service_screens.dart';
import 'package:fixit/screens/services_provider/service_provider.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: const [
          Icon(Icons.call),
          SizedBox(
            width: 24,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 193,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 147,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.deepPurple,
                              blueColors,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get 30% off',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Just by Booking Home\nServices',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 22,
                      child: Image.asset(
                        "assets/screens/offericons.png",
                        height: 150,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: Image.asset("assets/icons/filter.png"),
                          hintText: 'Search here...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Services',
                    style: textStyle
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ServiceScreens()));
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      ServiceCard(
                        title: 'Plumbing',
                        imageUrl:
                            'assets/serviceicons/plumber.png', // Replace with your plumbing icon asset path
                      ),
                      ServiceCard(
                        title: 'Electric work',
                        imageUrl:
                            'assets/serviceicons/electricwork.png', // Replace with your electric work icon asset path
                      ),
                      ServiceCard(
                        title: 'Solar',
                        imageUrl:
                            'assets/serviceicons/solarenergy.png', // Replace with your solar icon asset path
                      ),
                      ServiceCard(
                        title: 'Air Conditenior',
                        imageUrl:
                            'assets/serviceicons/airconditenior.png', // Replace with your other service icon asset path
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Service Providers',
                    style: textStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ServiceProviderScreens()));
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
                  itemCount: serviceProvider.length,
                  itemBuilder: (context, index) {
                    return ServiceProviderCard(
                        name: serviceProvider[index].name.toString(),
                        profession: serviceProvider[index].profession.toString(),
                        rating: serviceProvider[index].rating.toString(),
                        imageUrl: serviceProvider[index].imageUrl.toString());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
