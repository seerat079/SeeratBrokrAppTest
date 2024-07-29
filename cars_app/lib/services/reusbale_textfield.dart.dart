import 'package:flutter/material.dart';

class reusable_textfield extends StatelessWidget {
  final String labelText;
  const reusable_textfield({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
    );
  }
}
