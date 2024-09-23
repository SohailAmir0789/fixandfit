import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WashingMashine extends StatefulWidget {
  const WashingMashine({super.key});

  @override
  State<WashingMashine> createState() => _WashingMashineState();
}

final _formkey = GlobalKey<FormState>();

class _WashingMashineState extends State<WashingMashine> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container3Color = Colors.white;
  Color container11Color = Colors.white;
  Color container22Color = Colors.white;
  Color container111Color = Colors.white;
  Color container222Color = Colors.white;
  Color container333Color = Colors.white;
  Color container444Color = Colors.white;
  Color container555Color = Colors.white;
  Color container666Color = Colors.white;
  Color container777Color = Colors.white;
  Color container888Color = Colors.white;
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
          backgroundColor: Colors.white,
          title: const Text(
            'Washing Machine Repair',
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
                    'Choose Your Service',
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
                        container3Color = Colors.white;
                        c1 = 'Automatic';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container1Color),
                      height: 90,
                      width: 150,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                            'Automatic',
                            textAlign: TextAlign.center,
                          )),
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
                        c1 = 'Semi Automatic';
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
                              image: AssetImage('assets/images/semiauto.png'),
                              height: 60,
                              width: 90,
                            ),
                            Text('Semi Automatic'),
                          ],
                        ),
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
                        container1Color = Colors.white;
                        container2Color = Colors.white;
                        container3Color = Colors.amber;
                        c1 = 'Manual';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container3Color),
                      height: 90,
                      width: 150,
                      child: const Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/manual.png'),
                            height: 60,
                            width: 90,
                          ),
                          Text('Manual'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      color: Colors.transparent,
                      height: 60,
                      width: 150,
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
                    'Choose Your Type',
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
                          c2 = 'Top Load';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            color: container11Color),
                        height: 50,
                        width: 150,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check),
                            Text(
                              'Top Load',
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
                          c2 = 'Front Load';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            color: container22Color),
                        height: 50,
                        width: 150,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check),
                            Text(
                              'Front Load',
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
                    'Choose your Company',
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
                        c3 = 'LG';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container111Color),
                      height: 90,
                      width: 150,
                      child: const Center(
                          child: Image(
                              image: AssetImage('assets/images/lg1.png'))),
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
                        c3 = 'DAwlance';
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
                          child: Image(
                              image: AssetImage('assets/images/pel1.png'))),
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
                        c3 = 'Samsung';
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
                              image: AssetImage('assets/images/samsung1.png'))),
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
                        Container(
                          height: 35,
                          width: 480,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                backgroundColor: Colors.amber),
                            onPressed: () async {
                              Map<String, dynamic> WashingMachine = {
                                'Service': c1,
                                'Load Type': c2,
                                'Brand': c3,
                                'Name': _nameController.text.trim(),
                                'Phone Number':
                                    _phoneNumberController.text.trim(),
                                'City': valueChoose,
                                'Area': _cityController.text.trim(),
                                'Address': _addressController.text.trim(),
                              };
                              await FirebaseFirestore.instance
                                  .collection('Washing Machine')
                                  .doc()
                                  .set(WashingMachine);
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
      ),
    );
  }
}
