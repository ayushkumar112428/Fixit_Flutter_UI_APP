import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/notification_on_off.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

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
        title: Text("Notification ",style: TextStyle(color: blueColors,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CustomSwitchListTile(
              title: 'General notification',
              value: generalNotification,
              onChanged: (bool value) {
                setState(() {
                  generalNotification = value;
                });
              },
            ),
            CustomSwitchListTile(
              title: 'Sound',
              value: sound,
              onChanged: (bool value) {
                setState(() {
                  sound = value;
                });
              },
            ),
            CustomSwitchListTile(
              title: 'Vibrate',
              value: vibrate,
              onChanged: (bool value) {
                setState(() {
                  vibrate = value;
                });
              },
            ),
            CustomSwitchListTile(
              title: 'New Service',
              value: newService,
              onChanged: (bool value) {
                setState(() {
                  newService = value;
                });
              },
            ),
            CustomSwitchListTile(
              title: 'Payment',
              value: payment,
              onChanged: (bool value) {
                setState(() {
                  payment = value;
                });
              },
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: ButtonStyles(title: "Save", colors: blueColors))
          ],
        ),
      ),
    );
  }
}