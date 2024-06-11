import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/phone_number_enter.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/phone_number_code.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String selectedImagePath = "assets/flag/india.png";
  int selectedNumber = 91;
  TextEditingController numberController = TextEditingController();
  final List<MenuItem> items = [
    MenuItem(
        name: "Afghanistan",
        imagePath: "assets/flag/afghanistan.png",
        number: 93),
    MenuItem(
        name: "Australia", imagePath: "assets/flag/australia.png", number: 61),
    MenuItem(
        name: "Bahrain", imagePath: "assets/flag/bahrain.png", number: 973),
    MenuItem(
        name: "Bangladesh",
        imagePath: "assets/flag/bangladesh.png",
        number: 880),
    MenuItem(name: "Brazil", imagePath: "assets/flag/brazil.png", number: 55),
    MenuItem(name: "Canada", imagePath: "assets/flag/canada.png", number: 1),
    MenuItem(name: "China", imagePath: "assets/flag/china.png", number: 86),
    MenuItem(name: "Cuba", imagePath: "assets/flag/cuba.png", number: 53),
    MenuItem(name: "India", imagePath: "assets/flag/india.png", number: 91),
    MenuItem(
        name: "Indonesia", imagePath: "assets/flag/indonesia.png", number: 62),
    MenuItem(name: "Iran", imagePath: "assets/flag/iran.png", number: 98),
    MenuItem(name: "Japan", imagePath: "assets/flag/japan.png", number: 81),
    MenuItem(name: "Myanmar", imagePath: "assets/flag/myanmar.png", number: 95),
    MenuItem(
        name: "New Zealand",
        imagePath: "assets/flag/newzealand.png",
        number: 64),
    MenuItem(name: "Russia", imagePath: "assets/flag/russia.png", number: 7),
    MenuItem(
        name: "Sri Lanka", imagePath: "assets/flag/srilanka.png", number: 94),
    MenuItem(name: "UK", imagePath: "assets/flag/uk.png", number: 44),
    MenuItem(name: "US", imagePath: "assets/flag/us.png", number: 1),
    MenuItem(
        name: "Zimbabwe", imagePath: "assets/flag/zimbabwe.png", number: 263),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame2.png"),
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
            const Text(
              "Enter your phone number to verify",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 75,
            ),
            PhoneNumberEnter(items: items, numberController: numberController),
            const SizedBox(
              height: 84,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhoneNumberCode(),
                    ),
                  );
                },
                child: ButtonStyles(title: "Send Code", colors: blueColors)),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  final String name;
  final String imagePath;
  final int number;

  MenuItem({
    required this.name,
    required this.imagePath,
    required this.number,
  });
}
