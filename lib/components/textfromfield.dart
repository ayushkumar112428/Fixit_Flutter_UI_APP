import 'package:flutter/material.dart';

class TextFromField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Color colors;
  const TextFromField({super.key, required this.controller, required this.hintText, required this.colors});

  @override
  State<TextFromField> createState() => _TextFromFieldState();
}

class _TextFromFieldState extends State<TextFromField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.colors),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),
      ),
    );
  }
}
