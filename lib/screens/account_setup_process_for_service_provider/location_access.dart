import 'package:fixit/screens/account_setup_process_for_service_provider/location_details.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class LocationAccess extends StatelessWidget {
  const LocationAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Image.asset("assets/logo/logofixit.png"),
          ),
          actions: [
            Image.asset("assets/icons/frame4.png"),
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
            Text("Allow “FixIt” to use your location",style: textStyle,),
            const SizedBox(height: 6,),
            const Text("We need to know your exact location so that Clients can find you easily near you.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),),
            const SizedBox(height: 24,),
            SizedBox(
              height: 165,
              width: double.infinity,
              child: Image.asset("assets/images/locationaccess.png",fit: BoxFit.fill,),
            ),
            const SizedBox(height: 30,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationDetails()));
            }, child: const Center(child: Text("Allow Once",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w700),),)),
            const Divider(),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationDetails()));
            }, child: const Center(child: Text("Allow While Using Fixit",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w700),),)),
            const Divider(),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationDetails()));
            }, child: const Center(child: Text("Don't Allow",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w700),),)),

          ],
        ),
      ),
    );
  }
}
