import 'package:flutter/material.dart';

class PricingOption extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isSelected;
  final TextEditingController controller;
  final String unit;
  final VoidCallback onTap;

  const PricingOption({super.key, 
    required this.title,
    required this.imageUrl,
    required this.isSelected,
    required this.controller,
    required this.unit,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.shade300,
            width: 2.0,
          ),
          color: isSelected ? Colors.blue.shade50 : Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(width: 16.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                (isSelected)? Image.asset("assets/icons/trueselect.png") : Image.asset("assets/icons/truenotselect.png"),
              ],
            ),
            if (isSelected)
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Amount',
                    suffixText: unit,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}