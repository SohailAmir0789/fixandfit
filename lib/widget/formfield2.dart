// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

final _formkey = GlobalKey<FormState>();

class FormField2 extends StatefulWidget {
  const FormField2({super.key});

  @override
  State<FormField2> createState() => _FormField2State();
}

class _FormField2State extends State<FormField2> {
  var valueChoose;
  List listItem = ["karachi", "Lahore"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: const TextStyle(fontSize: 12),
                        fillColor: Colors.grey.shade400,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide:
                                BorderSide(color: Colors.grey.shade400))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter Something';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: const TextStyle(fontSize: 12),
                        fillColor: Colors.grey.shade400,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide:
                                BorderSide(color: Colors.grey.shade400))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter Something';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 8,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: DropdownButton(
                      hint: const Text(
                        " Select city",
                        style: TextStyle(fontSize: 12),
                      ),
                      dropdownColor: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(1),
                      focusColor: Colors.transparent,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      //check: true,
                      //inputAction: TextInputAction.next,
                      // isPassword: false,
                      // hintText: "City",
                      //maxLines: 1,
                    ),
                  ),
                  Container(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Select Area',
                        hintStyle: const TextStyle(fontSize: 12),
                        fillColor: Colors.grey.shade400,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide:
                                BorderSide(color: Colors.grey.shade400))),
                    maxLines: 1,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter Something';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Address',
                        hintStyle: const TextStyle(fontSize: 12),
                        fillColor: Colors.grey.shade400,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide:
                                BorderSide(color: Colors.grey.shade400))),
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter Something';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 8,
                  ),
                  Container(
                    height: 35,
                    width: 480,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          backgroundColor: Colors.amber),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Your request has been marked',
                              ),
                            ),
                          );
                        }
                      },
                      child: const Text('Book Now'),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
