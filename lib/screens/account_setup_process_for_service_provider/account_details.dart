import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/textfromfield.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/how_to_case.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({super.key});

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  TextEditingController ownerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame8.png"),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Select Payment method",
              style: textStyle,
            ),
            const SizedBox(height: 20),
            TextFromField(controller: ownerName, hintText: 'Owner name',colors: Colors.black,),
            const SizedBox(height: 16),
            TextFromField(controller: ownerName, hintText: 'NIC Number',colors: Colors.black,),
            const SizedBox(height: 16),
            TextFromField(controller: ownerName, hintText: 'Phone Number',colors: Colors.black,),
            const SizedBox(height: 16),
            Text("NIC Expiry date",style: textStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w500)),
            TextFromField(controller: ownerName, hintText: 'DD/MM/YY',colors: Colors.black,),
            const SizedBox(height: 30,),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HowToCase()));
                },
                child: ButtonStyles(title: "Next", colors: blueColors)),
          ],
        ),
      ),
    );
  }
}