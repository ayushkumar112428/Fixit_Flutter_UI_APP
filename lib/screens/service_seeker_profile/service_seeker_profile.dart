import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/profile_card_edite.dart';
import 'package:fixit/screens/service_seeker_profile/edite_profile_seeker.dart';
import 'package:fixit/screens/service_seeker_profile/help_support.dart';
import 'package:fixit/screens/service_seeker_profile/notification.dart';
import 'package:fixit/screens/service_seeker_profile/payment_method_profile.dart';
import 'package:fixit/screens/splash_screen/splash_screen.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class ServiceSeekerProfile extends StatefulWidget {
  const ServiceSeekerProfile({super.key});

  @override
  State<ServiceSeekerProfile> createState() => _ServiceSeekerProfileState();
}

class _ServiceSeekerProfileState extends State<ServiceSeekerProfile> {
  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/icons/logoutpop.png",
              height: 80,
              width: 80,
            ),
            const SizedBox(height: 7),
            Text(
              'Logout',
              style: textStyle.copyWith(fontWeight: FontWeight.bold),
            ),
             Text(
              'Are you sure to logout?',
              style: textStyle.copyWith(fontWeight: FontWeight.w500,fontSize: 16),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SplashScreen()));
              },
              child: ButtonStyles(title: "Logout", colors: blueColors),
            ),
            const SizedBox(height: 20),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Cancel",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w500),))
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(color: blueColors, fontWeight: FontWeight.w600),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Container(
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
            Text(
              "Ayush",
              style: textStyle.copyWith(fontWeight: FontWeight.w600),
            ),
            ProfileCardEdite(
                title: "Edite Profile",
                image: "assets/icons/editeprofile.png",
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditeProfileSeeker()));
                }),
            ProfileCardEdite(
                title: "Notification",
                image: "assets/icons/notification.png",
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Notifications()));
                }),
            ProfileCardEdite(
                title: "Payment Method",
                image: "assets/icons/paymentmethod.png",
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethodProfile()));
                }),
            ProfileCardEdite(
                title: "Help & Support",
                image: "assets/icons/helpandsupport.png",
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpSupport()));
                }),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: InkWell(
                onTap: _showConfirmationDialog,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset("assets/icons/logout.png"),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Logout",
                          style: textStyle.copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/icons/changeprofile.png"),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Change Profile to selling mode",
                    style: textStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.blue, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/ayush.jpg"))),
                    ),
                    const SizedBox(width: 3,),
                    const Text(
                      "Ayush",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
