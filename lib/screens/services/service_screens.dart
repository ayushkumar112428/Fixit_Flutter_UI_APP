import 'package:fixit/components/service_card_layout.dart';
import 'package:fixit/data/service_data.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class ServiceScreens extends StatelessWidget {
  const ServiceScreens({super.key});

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
        title: Text("Popular Service ",style: TextStyle(color: blueColors,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ServiceCardLayout(title: "Maintenance",listofdata: maintenanceData,),
              ServiceCardLayout(title: "Cleaning",listofdata: cleaningData,),
              ServiceCardLayout(title: "Home Improvement",listofdata: homeImprovementData,),
              ServiceCardLayout(title: "Security",listofdata: securityData,),
              ServiceCardLayout(title: "Car Maintenance",listofdata: carMaintenanceData,),
              ServiceCardLayout(title: "Handyman Service",listofdata: handymanServicesData,),
              ServiceCardLayout(title: "Painting Service",listofdata: paintingServiceData,),
              ServiceCardLayout(title: "Other Services",listofdata: otherServiceData,),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}