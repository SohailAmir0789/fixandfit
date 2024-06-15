// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

final _formkey = GlobalKey<FormState>();

class FormField1 extends StatefulWidget {
  const FormField1({super.key});

  @override
  State<FormField1> createState() => _FormField1State();
}

class _FormField1State extends State<FormField1> {
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
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: Text(
                        'Describe Your Problem',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        hintText: 'Describe your Problem',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        border: OutlineInputBorder()),
                    minLines: 3,
                    maxLines: 9,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter Something';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 10, 1, 1),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter Something';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 10, 1, 1),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter Something';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 15, 1, 1),
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: DropdownButton(
                        hint: const Text(
                          " Select city",
                          style: TextStyle(fontSize: 12),
                        ),
                        dropdownColor: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(2),
                        focusColor: Colors.transparent,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 25,
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
                  ),
                  const SizedBox(
                    height: 8,
                    width: double.infinity,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: 'Select Area',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter Something';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 10, 1, 1),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.start,
                      decoration: const InputDecoration(
                        hintText: 'Address',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter Something';
                        }
                        return null;
                      },
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
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
