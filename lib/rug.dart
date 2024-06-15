import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RugCleaning extends StatefulWidget {
  const RugCleaning({super.key});

  @override
  State<RugCleaning> createState() => _RugCleaningState();
}

final _formkey = GlobalKey<FormState>();

class _RugCleaningState extends State<RugCleaning> {
  Color container1Color = Colors.white;

  Color container2Color = Colors.white;

  Color container3Color = Colors.white;

  Color container4Color = Colors.white;

  Color container5Color = Colors.white;

  Color container6Color = Colors.white;

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
          backgroundColor: const Color.fromARGB(255, 255, 233, 155),
          title: const Text(
            'Rug Cleaning',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    'Rug Price',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Per Sq ft'),
                        Text(
                          'Rs.40',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1Color = Colors.amber;
                                container2Color = Colors.white;
                                container3Color = Colors.white;
                                container4Color = Colors.white;
                                container5Color = Colors.white;
                                container6Color = Colors.white;
                                c1 = '4 x 6';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container1Color),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text(
                                    '4 x 6',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1Color = Colors.white;
                                container2Color = Colors.amber;
                                container3Color = Colors.white;
                                container4Color = Colors.white;
                                container5Color = Colors.white;
                                container6Color = Colors.white;
                                c1 = '6 x 6';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container2Color),
                              height: 70,
                              width: 90,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(Icons.check)),
                                    Text(
                                      '6 x 6',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1Color = Colors.white;
                                container2Color = Colors.white;
                                container3Color = Colors.amber;
                                container4Color = Colors.white;
                                container5Color = Colors.white;
                                container6Color = Colors.white;
                                c1 = '8 x 10';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container3Color),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text(
                                    '8 x 10',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1Color = Colors.white;
                                container2Color = Colors.white;
                                container3Color = Colors.white;
                                container4Color = Colors.amber;
                                container5Color = Colors.white;
                                container6Color = Colors.white;
                                c1 = '9 x 12';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container4Color),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text(
                                    '9 x 12',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1Color = Colors.white;
                                container2Color = Colors.white;
                                container3Color = Colors.white;
                                container4Color = Colors.white;
                                container5Color = Colors.amber;
                                container6Color = Colors.white;
                                c1 = '5 x 8';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container5Color),
                              height: 70,
                              width: 90,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(Icons.check)),
                                    Text(
                                      '5 x 8',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1Color = Colors.white;
                                container2Color = Colors.white;
                                container3Color = Colors.white;
                                container4Color = Colors.white;
                                container5Color = Colors.white;
                                container6Color = Colors.amber;
                                c1 = 'I dont Know';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container6Color),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text('I dont know'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: Colors.amber),
                            onPressed: () async {
                              Map<String, dynamic> Rug = {
                                'Rug Size': c1,
                                'Name': _nameController.text.trim(),
                                'Phone Number':
                                    _phoneNumberController.text.trim(),
                                'City': valueChoose,
                                'Area': _cityController.text.trim(),
                                'Address': _addressController.text.trim(),
                              };
                              await FirebaseFirestore.instance
                                  .collection('Rug Cleaning')
                                  .doc()
                                  .set(Rug);
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
                            child: const Text(
                              'Book Now',
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
