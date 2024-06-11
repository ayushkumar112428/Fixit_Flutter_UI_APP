import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/select_row_container.dart';
import 'package:fixit/components/textfromfield.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/upload_documents.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class ServiceWorkingHours extends StatefulWidget {
  const ServiceWorkingHours({super.key});

  @override
  State<ServiceWorkingHours> createState() => _ServiceWorkingHoursState();
}

class _ServiceWorkingHoursState extends State<ServiceWorkingHours> {
  TextEditingController startingTime = TextEditingController();
  TextEditingController endingTime = TextEditingController();
  bool select1 = false;
  bool select2 = false;
  String iconTrue = "assets/icons/trueselect.png";
  String iconFalse = "assets/icons/truenotselect.png";
  String img1 = "assets/icons/truenotselect.png";
  String img2 = "assets/icons/truenotselect.png";
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
          Image.asset("assets/icons/frame5.png"),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Service working hours",
                style: textStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "From",
                style: textStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w500),
              ),
              TextFromField(controller: startingTime, hintText: "08:00 AM",colors: Colors.black,),
              const SizedBox(
                height: 16,
              ),
              Text(
                "To",
                style: textStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w500),
              ),
              TextFromField(controller: endingTime, hintText: "08:00 PM",colors: Colors.black,),
              const SizedBox(
                height: 24,
              ),
              Text(
                "How Do you want to receive order",
                style: textStyle,
              ),
              const SizedBox(
                height: 24,
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
                child: SelectRowContainer(
                  title: 'Fixit',
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
                child: SelectRowContainer(
                  title: 'Client',
                  img: img2,
                  selct: select2,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadDocuments()));
                  },
                  child: ButtonStyles(title: "Next", colors: blueColors)),
            ],
          ),
        ),
      ),
    );
  }
}
