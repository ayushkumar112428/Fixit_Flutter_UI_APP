import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/phone_number_enter.dart';
import 'package:fixit/components/textfromfield.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/phone_number.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class EditeProfileSeeker extends StatefulWidget {
  const EditeProfileSeeker({super.key});

  @override
  State<EditeProfileSeeker> createState() => _EditeProfileSeekerState();
}

class _EditeProfileSeekerState extends State<EditeProfileSeeker> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateOfbirthdayController = TextEditingController();
  TextEditingController contryController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
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
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.blue,
              )),
        ),
        title: const Text(
          "Edite Profile",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 96,
                width: 96,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/ayush.jpg"))),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Name",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            TextFromField(
              controller: nameController,
              hintText: "Enter name",
              colors: Colors.blue,
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Email",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            TextFromField(
              controller: emailController,
              hintText: "Enter email",
              colors: Colors.blue,
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Date of birth",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            TextFromField(
              controller: dateOfbirthdayController,
              hintText: "dd/mm/yyyy",
              colors: Colors.blue,
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Phone Number",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            PhoneNumberEnter(items: items, numberController: numberController),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: ButtonStyles(title: "Save", colors: blueColors),
            ),
          ],
        ),
      ),
    );
  }
}
