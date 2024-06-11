import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/selecte_payment_method.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/account_details.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class AccountScreens extends StatefulWidget {
  const AccountScreens({super.key});

  @override
  State<AccountScreens> createState() => _AccountScreensState();
}

class _AccountScreensState extends State<AccountScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame7.png"),
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
            const SelectedPaymentMethod(),
            const SizedBox(
              height: 54,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountDetails()));
                },
                child: ButtonStyles(title: "Next", colors: blueColors)),
          ],
        ),
      ),
    );
  }
}
