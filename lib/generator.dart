import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Generator extends StatefulWidget {
  const Generator({super.key});

  @override
  State<Generator> createState() => _GeneratorState();
}

final _formkey = GlobalKey<FormState>();

class _GeneratorState extends State<Generator> {
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  Color container111Color = Colors.white;
  Color container222Color = Colors.white;
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container3Color = Colors.white;
  Color container4Color = Colors.white;
  Color container5Color = Colors.white;
  Color container6Color = Colors.white;
  Color container7Color = Colors.white;
  Color container8Color = Colors.white;
  Color container11Color = Colors.white;
  Color container22Color = Colors.white;
  Color container33Color = Colors.white;
  Color container44Color = Colors.white;
  Color container55Color = Colors.white;
  Color container66Color = Colors.white;
  Color container77Color = Colors.white;
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
            'Generator Service',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Text(
                  'Choose Your Generator',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
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
                      c1 = 'Home';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container111Color),
                    height: 90,
                    width: 150,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/generator.png'),
                          height: 60,
                          width: 90,
                        ),
                        Text('Home'),
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
                      c1 = 'Commercial';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container222Color),
                    height: 90,
                    width: 150,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          Image(
                            image:
                                AssetImage('assets/images/commercialgen.png'),
                            height: 60,
                            width: 90,
                          ),
                          Text('Commercial '),
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
                  'Choose Your Generator size',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
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
                      container4Color = Colors.white;
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      container7Color = Colors.white;
                      container8Color = Colors.white;
                      c2 = '1KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container1Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('1 KVA'),
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
                      container7Color = Colors.white;
                      container8Color = Colors.white;
                      c2 = '2KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container2Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('2 KVA'),
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
                      container3Color = Colors.amber;
                      container4Color = Colors.white;
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      container7Color = Colors.white;
                      container8Color = Colors.white;
                      c2 = '3KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container3Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('3 KVA'),
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
                      container4Color = Colors.amber;
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      container7Color = Colors.white;
                      container8Color = Colors.white;
                      c2 = '4 KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container4Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('4 KVA'),
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
                      container1Color = Colors.white;
                      container2Color = Colors.white;
                      container3Color = Colors.white;
                      container4Color = Colors.white;
                      container5Color = Colors.amber;
                      container6Color = Colors.white;
                      container7Color = Colors.white;
                      container8Color = Colors.white;
                      c2 = '5 KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container5Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('5 KVA'),
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
                      container5Color = Colors.white;
                      container6Color = Colors.amber;
                      container7Color = Colors.white;
                      container8Color = Colors.white;
                      c2 = '6 KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container6Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('6 KVA'),
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
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      container7Color = Colors.amber;
                      container8Color = Colors.white;
                      c2 = '7 KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container7Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('7 KVA'),
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
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      container7Color = Colors.white;
                      container8Color = Colors.amber;
                      c2 = '8+ KVA';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container8Color),
                    height: 85,
                    width: 70,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('8+ KVA'),
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
                  'Choose your Generator Service',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container11Color = Colors.amber;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      c3 = 'Generator Service';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container11Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Generator Service',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Price may vary after inspection',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container11Color = Colors.white;
                      container22Color = Colors.amber;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      c3 = 'Battery Service';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container22Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Battery Service',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price may vary after inspection',
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.amber;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      c3 = 'Starting Problem';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container33Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Starting Problem',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price may vary after inspection',
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.amber;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      c3 = 'Oil Leackage Issue';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container44Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Oil leakage issue ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price may vary after inspection',
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.amber;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      c3 = 'Wiring Issue';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container55Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Wiring issue',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price may vary after inspection',
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.amber;
                      container77Color = Colors.white;
                      c3 = 'GAs + Petrol Setting';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container66Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Gas + Petrol setting',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price may vary after inspection',
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.amber;
                      c3 = 'Generator Self Issue';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container77Color),
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Generator Self issue',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price may vary after inspection',
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
                            Map<String, dynamic> GeneratorService = {
                              'Genrator Type': c1,
                              'Generator Size': c2,
                              'Service Type': c3,
                              'Name': _nameController.text.trim(),
                              'Phone Number':
                                  _phoneNumberController.text.trim(),
                              'City': valueChoose,
                              'Area': _cityController.text.trim(),
                              'Address': _addressController.text.trim(),
                            };
                            await FirebaseFirestore.instance
                                .collection('Generator')
                                .doc()
                                .set(GeneratorService);
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
          ]),
        ),
      ),
    );
  }
}
