import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/textfromfield.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/about_service.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class LocationDetails extends StatefulWidget {
  const LocationDetails({super.key});

  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  TextEditingController businessName = TextEditingController();
  TextEditingController businessAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame4.png"),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Allow “FixIt” to use your location", style: textStyle),
              const SizedBox(height: 6,),
              const Text(
                "We need to know your exact location so that Clients can find you easily near you.",
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),),
              const SizedBox(height: 24,),
              SizedBox(
                height: 165,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/livelocation.png", fit: BoxFit.fill,),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 84, width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.location_pin),
                    Text(
                      "Antrix Arcade, Dmart Chokdi,\nRaspan Cross Rd, Nikol, Ahmedabad,\nGujarat 380038",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              TextFromField(
                  controller: businessName, hintText: "Business name",colors: Colors.black,),
              const SizedBox(height: 16,),
              TextFromField(
                  controller: businessAddress, hintText: "Business Address",colors: Colors.black,),
              const SizedBox(height: 30,),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutService()));
                  },
                  child: ButtonStyles(title: "Next", colors: blueColors)),
            ],
          ),
        ),
      ),
    );
  }
}
