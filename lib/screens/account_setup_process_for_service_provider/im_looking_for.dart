import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/selectcontainer.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/phone_number.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class ImLookingFor extends StatefulWidget {
  const ImLookingFor({super.key});

  @override
  State<ImLookingFor> createState() => _ImLookingForState();
}

class _ImLookingForState extends State<ImLookingFor> {
  bool select1 = false;
  bool select2 = false;
  String iconTrue = "assets/icons/trueselect.png";
  String iconFalse = "assets/icons/truenotselect.png";
  String img1 = "assets/icons/truenotselect.png";
  String img2 = "assets/icons/truenotselect.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
            Text(
              "I am",
              style: textStyle.copyWith(fontSize: 48,fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  img1 = iconTrue;
                  img2 = iconFalse;
                  select1 = true;
                  select2 = false;
                });
              },
              child: SelectContainer(
                title1: "Service Provider",
                title2: "I offer professional service.",
                img: img1,
                selct: select1,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  img1 = iconFalse;
                  img2 = iconTrue;
                  select1 = false;
                  select2 = true;
                });
              },
              child: SelectContainer(
                title1: "Looking For Service",
                title2: "I am looking for home service.",
                img: img2,
                selct: select2,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PhoneNumber()));
                },
                child: ButtonStyles(title: "Next", colors: blueColors)),
          ],
        ),
      ),
    );
  }
}
