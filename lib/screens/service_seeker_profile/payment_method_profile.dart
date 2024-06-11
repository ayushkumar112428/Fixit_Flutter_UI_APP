import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/selecte_payment_method.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class PaymentMethodProfile extends StatelessWidget {
  const PaymentMethodProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back,color: Colors.blue,)),
        ),
        title: const Text("Payment",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SelectedPaymentMethod(),
            const SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: ButtonStyles(title: "Save", colors: blueColors)),
          ],
        ),
      ),
    );
  }
}