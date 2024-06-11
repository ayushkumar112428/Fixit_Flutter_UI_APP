import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitchListTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitchListTile({super.key, 
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: SwitchListTile(
        title: Text(
          title,
          style: textStyle.copyWith(fontWeight: FontWeight.w500),
        ),
        value: value,
        onChanged: onChanged,
        activeColor: blueColors,
        activeTrackColor: const Color.fromARGB(255, 160, 182, 240),
        inactiveThumbColor: Colors.grey,
        inactiveTrackColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 7.0),
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}