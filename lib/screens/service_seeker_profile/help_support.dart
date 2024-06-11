import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/textfromfield.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController helpDetailsController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back,color: Colors.blue,)),
        ),
        title: const Text("Help & Support ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Image.asset("assets/icons/help.png"),
            const Text("Hello, how can we assist you?"),
            const SizedBox(height: 12,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Title"),
                TextFromField(controller: titleController, hintText: "Enter the title of your issue", colors: Colors.grey),
                const SizedBox(height: 12,),
                const Text("Write in bellow box"),
                TextField(
                controller: helpDetailsController,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Write here...',
                ),
              ),
              ],
            ),
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