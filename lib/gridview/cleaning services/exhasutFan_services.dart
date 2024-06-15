// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExhaustFan extends StatefulWidget {
  const ExhaustFan({
    super.key,
  });

  @override
  State<ExhaustFan> createState() => _ExhaustFanState();
}

final _formkey = GlobalKey<FormState>();

class _ExhaustFanState extends State<ExhaustFan> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  final _describeController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  late String c1;

  var valueChoose;
  List listItem = ["karachi", "Lahore"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(254, 206, 0, 1.000),
          title: const Text(
            'Tell us about your problem',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    'Choose Your Service',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            container1Color = Colors.amber;
                            container2Color = Colors.white;
                            c1 = 'installation';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              color: container1Color),
                          height: 30,
                          width: 170,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Intallation',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.check,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          container1Color = Colors.white;
                          container2Color = Colors.amber;
                          c1 = 'Repair';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            color: container2Color),
                        height: 30,
                        width: 170,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Repair',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.check,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
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
                          controller: _describeController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: 'Describe Your Problem',
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
                          controller: _nameController,
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
                          controller: _phoneNumberController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              hintStyle: const TextStyle(fontSize: 12),
                              fillColor: Colors.grey.shade400,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400))),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(11),
                          ],
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            if (value.length != 11) {
                              return 'Phone number must be 11 digits long';
                            }
                            return null;
                          },
                        ),
                        Container(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
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
                          controller: _cityController,
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
                          controller: _addressController,
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
                        SizedBox(
                          height: 35,
                          width: 480,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                backgroundColor: Colors.amber),
                            onPressed: () async {
                              Map<String, dynamic> Repair = {
                                'Service Type': c1,
                                'Describe': _describeController.text,
                                'Name': _nameController.text.trim(),
                                'Phone Number':
                                    _phoneNumberController.text.trim(),
                                'City': valueChoose,
                                'Area': _cityController.text.trim(),
                                'Address': _addressController.text.trim(),
                              };
                              await FirebaseFirestore.instance
                                  .collection('Repair')
                                  .doc()
                                  .set(Repair);
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
            ],
          ),
        ));
  }
}
