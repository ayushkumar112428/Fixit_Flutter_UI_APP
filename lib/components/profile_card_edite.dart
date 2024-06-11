import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class ProfileCardEdite extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback ontap;
  const ProfileCardEdite({super.key, required this.title, required this.image, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(image),
                          ),
                          const SizedBox(width: 12,),
                          Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        ],
                      ),
                      InkWell(
                        onTap: ontap,
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: blueColors,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}