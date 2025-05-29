import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  final contName;
  final txt;
  const Customtextformfield(
      {super.key, required this.contName, required this.txt});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: contName,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          labelText: txt,
          labelStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400))),
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'Please enter your $txt';
      //   }
      //   return null;
      // },
    );
  }
}
