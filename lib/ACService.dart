// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Acservice extends StatefulWidget {
  const Acservice({super.key});

  @override
  State<Acservice> createState() => _AcserviceState();
}

final _formkey = GlobalKey<FormState>();

class _AcserviceState extends State<Acservice> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container11Color = Colors.white;

  Color container22Color = Colors.white;

  Color container33Color = Colors.white;
  Color container44Color = Colors.white;
  Color container111Color = Colors.white;

  Color container222Color = Colors.white;

  Color container333Color = Colors.white;
  Color container444Color = Colors.white;

  Color container555Color = Colors.white;

  Color container666Color = Colors.white;
  Color container777Color = Colors.white;

  Color container888Color = Colors.white;

  Color container1111Color = Colors.white;

  Color container2222Color = Colors.white;

  Color container3333Color = Colors.white;
  Color container4444Color = Colors.white;

  Color container5555Color = Colors.white;

  Color container6666Color = Colors.white;
  Color container7777Color = Colors.white;

  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  late String c1;
  late String c2;
  late String c3;
  late String c4;
  var valueChoose;
  List listItem = ["karachi", "Lahore"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'AC Services',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Text(
                  'Choose Your AC',
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
                      container1Color = Colors.amber;
                      container2Color = Colors.white;
                      c1 = 'Inverter';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container1Color),
                    height: 90,
                    width: 150,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/ac.png'),
                          height: 60,
                          width: 90,
                        ),
                        Text('Inverter'),
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
                      c1 = 'Non Inverter';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container2Color),
                    height: 90,
                    width: 150,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/ac1.png'),
                            height: 60,
                            width: 90,
                          ),
                          Text('Non Inverter'),
                        ],
                      ),
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
                  'Choose Your AC Size',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container11Color = Colors.amber;
                        container22Color = Colors.white;
                        container33Color = Colors.white;
                        container44Color = Colors.white;
                        c2 = '1 Ton';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container11Color),
                      height: 70,
                      width: 72,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check),
                          Text(
                            '1 Ton',
                            style: TextStyle(fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container11Color = Colors.white;
                        container22Color = Colors.amber;
                        container33Color = Colors.white;
                        container44Color = Colors.white;
                        c2 = '1.5 Ton';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container22Color),
                      height: 70,
                      width: 72,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check),
                          Text(
                            '1.5 Tons',
                            style: TextStyle(fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container11Color = Colors.white;
                        container22Color = Colors.white;
                        container33Color = Colors.amber;
                        container44Color = Colors.white;
                        c2 = '2 Ton';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container33Color),
                      height: 70,
                      width: 72,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check),
                          Text(
                            '2 Tons',
                            style: TextStyle(fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container11Color = Colors.white;
                        container22Color = Colors.white;
                        container33Color = Colors.white;
                        container44Color = Colors.amber;
                        c2 = '2+ Ton';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container44Color),
                      height: 70,
                      width: 72,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check),
                          Text(
                            '2+ Tons',
                            style: TextStyle(fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )),
            ]),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Text(
                  'Choose your AC Company',
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
                      container444Color = Colors.white;
                      container555Color = Colors.white;
                      container666Color = Colors.white;
                      container777Color = Colors.white;
                      container888Color = Colors.white;
                      c3 = 'Gree';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container111Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child:
                            Image(image: AssetImage('assets/images/gree.png'))),
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
                      container444Color = Colors.white;
                      container555Color = Colors.white;
                      container666Color = Colors.white;
                      container777Color = Colors.white;
                      container888Color = Colors.white;
                      c3 = 'Dawlance';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container222Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/dawlance.png'))),
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
                      container333Color = Colors.amber;
                      container444Color = Colors.white;
                      container555Color = Colors.white;
                      container666Color = Colors.white;
                      container777Color = Colors.white;
                      container888Color = Colors.white;
                      c3 = 'Haier';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container333Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/haier1.png'))),
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
                      container444Color = Colors.amber;
                      container555Color = Colors.white;
                      container666Color = Colors.white;
                      container777Color = Colors.white;
                      container888Color = Colors.white;
                      c3 = 'Orient';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container444Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/orient1.png'))),
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
                      container444Color = Colors.white;
                      container555Color = Colors.amber;
                      container666Color = Colors.white;
                      container777Color = Colors.white;
                      container888Color = Colors.white;
                      c3 = 'Kenwood';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container555Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/kenwood1.png'))),
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
                      container444Color = Colors.white;
                      container555Color = Colors.white;
                      container666Color = Colors.amber;
                      container777Color = Colors.white;
                      container888Color = Colors.white;
                      c3 = 'Pel';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container666Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child:
                            Image(image: AssetImage('assets/images/pel1.png'))),
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
                      container444Color = Colors.white;
                      container555Color = Colors.white;
                      container666Color = Colors.white;
                      container777Color = Colors.amber;
                      container888Color = Colors.white;
                      c3 = 'Changhong';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container777Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/changhong1.png'))),
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
                      container444Color = Colors.white;
                      container555Color = Colors.white;
                      container666Color = Colors.white;
                      container777Color = Colors.white;
                      container888Color = Colors.amber;
                      c3 = 'Other Companies';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container888Color),
                    height: 90,
                    width: 150,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Center(child: Text('Other Companies')),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1111Color = Colors.amber;
                      container2222Color = Colors.white;
                      container3333Color = Colors.white;
                      container4444Color = Colors.white;
                      container5555Color = Colors.white;
                      container6666Color = Colors.white;
                      container7777Color = Colors.white;
                      c4 = 'General Service';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container1111Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'General Service',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact us for a price',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1111Color = Colors.white;
                      container2222Color = Colors.amber;
                      container3333Color = Colors.white;
                      container4444Color = Colors.white;
                      container5555Color = Colors.white;
                      container6666Color = Colors.white;
                      container7777Color = Colors.white;
                      c4 = 'Master Service';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container2222Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Master Service',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact us for a price',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1111Color = Colors.white;
                      container2222Color = Colors.white;
                      container3333Color = Colors.amber;
                      container4444Color = Colors.white;
                      container5555Color = Colors.white;
                      container6666Color = Colors.white;
                      container7777Color = Colors.white;
                      c4 = 'Gas Refiling';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container3333Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Gas Refilling',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact us for a price',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1111Color = Colors.white;
                      container2222Color = Colors.white;
                      container3333Color = Colors.white;
                      container4444Color = Colors.amber;
                      container5555Color = Colors.white;
                      container6666Color = Colors.white;
                      container7777Color = Colors.white;
                      c4 = 'Ac Install';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container4444Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ac Install',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact us for a price',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1111Color = Colors.white;
                      container2222Color = Colors.white;
                      container3333Color = Colors.white;
                      container4444Color = Colors.white;
                      container5555Color = Colors.amber;
                      container6666Color = Colors.white;
                      container7777Color = Colors.white;
                      c4 = 'Ac Repairing';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container5555Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ac Repairing',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact us for a price',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1111Color = Colors.white;
                      container2222Color = Colors.white;
                      container3333Color = Colors.white;
                      container4444Color = Colors.white;
                      container5555Color = Colors.white;
                      container6666Color = Colors.amber;
                      container7777Color = Colors.white;
                      c4 = 'Ac Installation of standing unit';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container6666Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ac Installation of standing unit',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact us for a price',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1111Color = Colors.white;
                      container2222Color = Colors.white;
                      container3333Color = Colors.white;
                      container4444Color = Colors.white;
                      container5555Color = Colors.white;
                      container6666Color = Colors.white;
                      container7777Color = Colors.amber;
                      c4 = 'Ac Dismantle Services';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container7777Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ac Dismantle Services',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact us for a price',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
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
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.amber),
                          onPressed: () async {
                            Map<String, dynamic> ACService = {
                              'Ac Type': c1,
                              'Ac Size': c2,
                              'Brand': c3,
                              'Service Type': c4,
                              'Name': _nameController.text.trim(),
                              'Phone Number':
                                  _phoneNumberController.text.trim(),
                              'City': valueChoose,
                              'Area': _cityController.text.trim(),
                              'Address': _addressController.text.trim(),
                            };
                            await FirebaseFirestore.instance
                                .collection('AC Service')
                                .doc()
                                .set(ACService);
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
      ),
    );
  }
}
