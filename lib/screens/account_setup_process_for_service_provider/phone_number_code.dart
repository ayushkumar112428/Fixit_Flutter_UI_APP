import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/enter_phone_code.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/location_access.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class PhoneNumberCode extends StatelessWidget {
  const PhoneNumberCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame3.png"),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: Column(
          children: [
            const Text(
              "Enter 5-digit PIN code sent to your phone number",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 48,
            ),
            const CodeInputWidget(),
            const SizedBox(height: 57,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationAccess()));
                },
                child: ButtonStyles(title: "Verify", colors: blueColors)),
            const SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 24,width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: const Center(child: Text("60")),
                ),
                const SizedBox(width: 11,),
                const Text("Did not received code?"),
                TextButton(onPressed: (){}, child: const Text("send again",style: TextStyle(color: Colors.blue),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
