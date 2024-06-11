import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/dropdown_menu_box.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/service_working_hours.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class AboutService extends StatefulWidget {
  const AboutService({super.key});

  @override
  State<AboutService> createState() => _AboutServiceState();
}

class _AboutServiceState extends State<AboutService> {
  List<String> services = [
    'Ac Service',
    'Car Service',
    'Bus Service',
    'Plumber Service',
    'Electrician Service',
    'Cleaning Service',
    'Carpenter Service',
    'Gardening Service',
    'Pest Control Service',
    'Painting Service'
  ];
  List<String> experience = [
    'No Experience',
    'less than 1 Year',
    '1 Year',
    '2 Year',
    '3 Year',
    '4 Year',
    '5 to 10 Year',
    '10+ Year',
  ];
  List<String> area = [
    "Bhat",
    "Hansol",
    "Maninagar",
    "Naroda",
    "Navrangpura",
    "Nikol",
    "Vasna",
    "Vastral",
    "Vastrapur",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame5.png"),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Service offer",style: textStyle,),
            const SizedBox(height: 30,),
            DropdownMenuBox(itemList: services, hintText: "Select a service"),
            const SizedBox(height: 16,),
            DropdownMenuBox(itemList: experience, hintText: "Select Your Experience"),
            const SizedBox(height: 16,),
            DropdownMenuBox(itemList: area, hintText: "Select Service Area"),
            const SizedBox(height: 126,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ServiceWorkingHours()));
                },
                child: ButtonStyles(title: "Next", colors: blueColors),),
          ],
        ),
      ),
    );
  }
}
