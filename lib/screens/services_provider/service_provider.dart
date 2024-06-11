import 'package:fixit/components/service_provider_layout.dart';
import 'package:fixit/data/service_provider_data.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class ServiceProviderScreens extends StatefulWidget {
  const ServiceProviderScreens({super.key});

  @override
  State<ServiceProviderScreens> createState() => _ServiceProviderScreensState();
}

class _ServiceProviderScreensState extends State<ServiceProviderScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: blueColors,)),
        ),
        title: Text("Service Provider",style: TextStyle(color: blueColors,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ServiceProviderLayout(title: "Electrician Provider", icon: "assets/icons/electricianicon.png", listofdata: electricianProvider),
              ServiceProviderLayout(title: "Plumber Provider", icon: "assets/icons/plumbericon.png", listofdata: plumberProvider),
              ServiceProviderLayout(title: "Carpenter Provider", icon: "assets/icons/carpentericon.png", listofdata: carpenterProvider),
              ServiceProviderLayout(title: "Painter Provider", icon: "assets/icons/paintericon.png", listofdata: painterProvider),
              ServiceProviderLayout(title: "Cleaner Provider", icon: "assets/icons/cleanericon.png", listofdata: cleanerProvider),
              ServiceProviderLayout(title: "Locksmith Provider", icon: "assets/icons/locksmithicon.png", listofdata: locksmithProvider),
              ServiceProviderLayout(title: "Mover Provider", icon: "assets/icons/movericon.png", listofdata: moverProvider),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}