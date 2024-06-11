import 'package:fixit/data/service_provider_data.dart';
import 'package:flutter/material.dart';

class SelectedServiceProvider extends StatelessWidget {
  final String title;
  final List<ServiceProvider> listofdata;
  const SelectedServiceProvider({super.key, required this.title, required this.listofdata});

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
        title: const Text("Service Provider",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600),),
        actions: [
          Image.asset("assets/icons/filter.png"),
          const SizedBox(width: 24,),
        ],
      ),
    );
  }
}