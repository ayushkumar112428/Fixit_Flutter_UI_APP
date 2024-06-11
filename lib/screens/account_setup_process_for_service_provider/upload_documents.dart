import 'package:fixit/components/button_style.dart';
import 'package:fixit/screens/account_setup_process_for_service_provider/account.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class UploadDocuments extends StatelessWidget {
  const UploadDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame6.png"),
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
              "We need a few Documents.",
              style: textStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Upload your services license",
              style: textStyle.copyWith(fontSize: 16,fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12,),
            uploadDocument("+ Upload"),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Upload your Certification",
              style: textStyle.copyWith(fontSize: 16,fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12,),
            uploadDocument("+ Upload"),
            const SizedBox(height: 127.45,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountScreens()));
              },
              child: ButtonStyles(title: 'Next', colors: blueColors,)),
          ],
        ),
      ),
    );
  }
  Widget uploadDocument(String title){
    return Container(
      width: double.infinity,height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.blue,)
      ),
      child: Center(
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: blueColors),),
      ),
    );
  }
}
