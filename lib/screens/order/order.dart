import 'package:fixit/components/paid.dart';
import 'package:fixit/components/schedule.dart';
import 'package:fixit/components/text_container.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class OrderScreens extends StatefulWidget {
  const OrderScreens({super.key});

  @override
  State<OrderScreens> createState() => _OrderScreensState();
}

class _OrderScreensState extends State<OrderScreens> {
  bool unpaid = true;
  bool paid = false;
  bool schedule = false;

  Widget orderBody(bool unpaid, bool paid) {
    if (unpaid) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You have not paid yet for bellow services",
            style: textStyle,
          ),
          const SizedBox(height: 7,),
          const PaidBoxStyle(pay: true,icons: "assets/icons/plumbericon.png",title: "Plumbing",amount: 200.00, date: 'May 28,2024', name: 'Janavi',),
        ],
      );
    } else if (paid) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Paid services", style: textStyle),
          const SizedBox(height: 7,),
          const PaidBoxStyle(pay: false,icons: "assets/icons/plumbericon.png",title: "Plumbing",amount: 300.00, date: 'May 25,2024', name: 'Janavi',),
          const PaidBoxStyle(pay: false,icons: "assets/icons/paintericon.png",title: "Painter",amount: 500.00, date: 'May 24,2024', name: 'Varun',),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upcoming Booking services",
            style: textStyle,
          ),
          const SizedBox(height: 7,),
          const ScheduleStyle(icons: "assets/icons/plumbericon.png", title: "Plumbing", amount: 200.00, date: "May 28,2024",time: '10:00 AM',name: "Janavi"),
        ],
      );
    }
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
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 214, 226, 236),
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(0, 3)),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            unpaid = true;
                            paid = false;
                            schedule = false;
                          });
                        },
                        child: TextContainer(
                          select: unpaid,
                          title: "Unpaid",
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            unpaid = false;
                            paid = true;
                            schedule = false;
                          });
                        },
                        child: TextContainer(
                          select: paid,
                          title: "paid",
                        )),
                    InkWell(
                      onTap: () {
                        setState(() {
                          unpaid = false;
                          paid = false;
                          schedule = true;
                        });
                      },
                      child: TextContainer(
                        select: schedule,
                        title: "Schedule",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            // (unpaid)? Expanded(child: Column()) : {(paid)? Expanded(child: Column(),): Expanded(child: Column(),)},
            orderBody(unpaid, paid),
          ],
        ),
      ),
    );
  }
}
