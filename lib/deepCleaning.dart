// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeepCleaning extends StatefulWidget {
  const DeepCleaning({super.key});

  @override
  State<DeepCleaning> createState() => _DeepCleaningState();
}

final _formkey = GlobalKey<FormState>();

class _DeepCleaningState extends State<DeepCleaning> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container11Color = Colors.white;
  Color container22Color = Colors.white;
  Color container33Color = Colors.white;
  Color container4Color = Colors.white;
  Color container5Color = Colors.white;
  Color container6Color = Colors.white;
  Color container111Color = Colors.white;
  Color container222Color = Colors.white;
  Color container333Color = Colors.white;
  Color container44Color = Colors.white;
  Color container55Color = Colors.white;
  Color container66Color = Colors.white;
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  late String c1;
  late String c2;
  late String c3;
  var valueChoose;
  List listItem = ["karachi", "Lahore"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 233, 155),
          title: const Text(
            'Deep Cleaning',
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
                    'Choose your Service',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  initState();
                  container1Color = Colors.amber;
                },
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
                              c1 = 'Commercial Cleaning';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: container1Color),
                            height: 100,
                            width: 150,
                            child: const Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/commercial.png'),
                                  height: 60,
                                  width: 110,
                                ),
                                Text('Commercial Cleaning'),
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
                              c1 = 'Residential Cleaning';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: container2Color),
                            height: 100,
                            width: 150,
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/home.png'),
                                    height: 60,
                                    width: 110,
                                  ),
                                  Text('Residential Cleaning'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    'Number of Stories',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container11Color = Colors.amber;
                        container22Color = Colors.white;
                        container33Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        c2 = 'Basement';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container11Color),
                      height: 70,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            'Basement',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
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
                        container11Color = Colors.white;
                        container22Color = Colors.amber;
                        container33Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        c2 = 'Basement + Ground';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container22Color),
                      height: 70,
                      width: 100,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: null, icon: Icon(Icons.check)),
                            Text(
                              'Basement+Ground',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                              ),
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
                        container11Color = Colors.white;
                        container22Color = Colors.white;
                        container33Color = Colors.amber;
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        c2 = 'Ground';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container33Color),
                      height: 70,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            'Ground',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container11Color = Colors.white;
                        container22Color = Colors.white;
                        container33Color = Colors.white;
                        container4Color = Colors.amber;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        c2 = 'Ground+1';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container4Color),
                      height: 70,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            'Ground+1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
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
                        container11Color = Colors.white;
                        container22Color = Colors.white;
                        container33Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.amber;
                        container6Color = Colors.white;
                        c2 = 'Ground+2';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container5Color),
                      height: 70,
                      width: 100,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: null, icon: Icon(Icons.check)),
                            Text(
                              'Ground+2',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                              ),
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
                        container11Color = Colors.white;
                        container22Color = Colors.white;
                        container33Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.amber;
                        c2 = 'Others';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container6Color),
                      height: 70,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            'Others',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    'Size of your premises',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container111Color = Colors.amber;
                        container222Color = Colors.white;
                        container333Color = Colors.white;
                        container44Color = Colors.white;
                        container55Color = Colors.white;
                        container66Color = Colors.white;
                        c3 = '120 Yards 4 Marla';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container111Color),
                      height: 80,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            '120 Yards 4 Marla',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
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
                        container111Color = Colors.white;
                        container222Color = Colors.amber;
                        container333Color = Colors.white;
                        container44Color = Colors.white;
                        container55Color = Colors.white;
                        container66Color = Colors.white;
                        c3 = '240 Yards 8 Marla';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container222Color),
                      height: 80,
                      width: 100,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: null, icon: Icon(Icons.check)),
                            Text(
                              '240 Yards 8 Marla',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                              ),
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
                        container111Color = Colors.white;
                        container222Color = Colors.white;
                        container333Color = Colors.amber;
                        container44Color = Colors.white;
                        container55Color = Colors.white;
                        container66Color = Colors.white;
                        c3 = '360 Yards 12 Marla';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container333Color),
                      height: 80,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            '360 Yards 12 Marla',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container111Color = Colors.white;
                        container222Color = Colors.white;
                        container333Color = Colors.white;
                        container44Color = Colors.amber;
                        container55Color = Colors.white;
                        container66Color = Colors.white;
                        c3 = '500 Yards 16 Marla';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container44Color),
                      height: 80,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            '500 Yards 16 Marla',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
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
                        container111Color = Colors.white;
                        container222Color = Colors.white;
                        container333Color = Colors.white;
                        container44Color = Colors.white;
                        container55Color = Colors.amber;
                        container66Color = Colors.white;
                        c3 = '1000 Yards 32 Marla';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container55Color),
                      height: 80,
                      width: 100,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: null, icon: Icon(Icons.check)),
                            Text(
                              '1000 Yards 32 Marla',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                              ),
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
                        container111Color = Colors.white;
                        container222Color = Colors.white;
                        container333Color = Colors.white;
                        container44Color = Colors.white;
                        container55Color = Colors.white;
                        container66Color = Colors.amber;
                        c3 = 'Others';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container66Color),
                      height: 80,
                      width: 100,
                      child: const Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text('Others'),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
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
                              Map<String, dynamic> Deep = {
                                'Service': c1,
                                'Num of Stories': c2,
                                'Size': c3,
                                'Name': _nameController.text.trim(),
                                'Phone Number':
                                    _phoneNumberController.text.trim(),
                                'City': valueChoose,
                                'Area': _cityController.text.trim(),
                                'Address': _addressController.text.trim(),
                              };
                              await FirebaseFirestore.instance
                                  .collection('Deep Cleaning')
                                  .doc()
                                  .set(Deep);
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
                              style: TextStyle(color: Colors.black),
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
