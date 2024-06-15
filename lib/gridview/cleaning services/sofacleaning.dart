import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SofaCleaning extends StatefulWidget {
  const SofaCleaning({super.key});

  @override
  State<SofaCleaning> createState() => _SofaCleaningState();
}

final _formkey = GlobalKey<FormState>();

class _SofaCleaningState extends State<SofaCleaning> {
  bool isShow = false;
  bool isPressed = false;
  bool isSelected = false;

  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container3Color = Colors.white;
  Color container11Color = Colors.white;
  Color container22Color = Colors.white;
  Color container33Color = Colors.white;
  Color container4Color = Colors.white;
  Color container5Color = Colors.white;
  Color container6Color = Colors.white;
  Color container111Color = Colors.white;
  Color container222Color = Colors.white;
  Color container333Color = Colors.white;
  Color container1111Color = Colors.white;
  Color container2222Color = Colors.white;
  Color container3333Color = Colors.white;
  Color container44Color = Colors.white;
  Color container55Color = Colors.white;
  Color container66Color = Colors.white;
  Color container69Color = Colors.white;
  Color container96Color = Colors.white;
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
          backgroundColor: const Color.fromRGBO(254, 206, 0, 1.000),
          title: const Text(
            'Sofa Cleaning',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 8, 0),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Text(
                  'Choose Your Color',
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
                      c1 = 'dark';
                    });
                    container1Color = Colors.amber;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container1Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/dark.png'),
                          height: 40,
                          width: 70,
                        ),
                        Text('Dark'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        container1Color = Colors.white;
                        container2Color = Colors.amber;
                        container3Color = Colors.white;
                        c1 = 'light';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container2Color,
                      ),
                      height: 70,
                      width: 90,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/light.png'),
                              height: 40,
                              width: 70,
                            ),
                            Text('Light'),
                          ],
                        ),
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
                      c1 = 'white';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container3Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/white.png'),
                          height: 40,
                          width: 70,
                        ),
                        Text('White'),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 8, 0),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Text(
                  'Choose Your Sofa Quantity',
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
                      c2 = '3 seater';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container11Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/3seater.png'),
                          height: 40,
                          width: 70,
                        ),
                        Text('3 Seaters'),
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
                      c2 = '5 seater';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container22Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/5seater.png'),
                            height: 40,
                            width: 70,
                          ),
                          Text('5 Seaters'),
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
                      c2 = '7 seater';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container33Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/7seater.png'),
                          height: 40,
                          width: 70,
                        ),
                        Text('7 Seaters'),
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
                      c2 = '9 seater';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container4Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/9seater.png'),
                          height: 40,
                          width: 70,
                        ),
                        Text('9 Seaters'),
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
                      c2 = '12 seater';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container5Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/12seater.png'),
                            height: 40,
                            width: 70,
                          ),
                          Text('12 Seaters'),
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
                      color: container6Color,
                    ),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/dark.png'),
                          height: 40,
                          width: 70,
                        ),
                        Text('Others'),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 8, 0),
                    child: SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: Text(
                        'Choose Your Cushions Quantity',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1111Color = Colors.amber;
                                container2222Color = Colors.white;
                                container3333Color = Colors.white;
                                container44Color = Colors.white;
                                container55Color = Colors.white;
                                container66Color = Colors.white;
                                c3 = '1';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: container1111Color,
                              ),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text('1'),
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
                                container1111Color = Colors.white;
                                container2222Color = Colors.amber;
                                container3333Color = Colors.white;
                                container44Color = Colors.white;
                                container55Color = Colors.white;
                                container66Color = Colors.white;
                                c3 = '2';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: container2222Color,
                              ),
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
                                      '2',
                                      style: TextStyle(fontSize: 13),
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
                                container1111Color = Colors.white;
                                container2222Color = Colors.white;
                                container3333Color = Colors.amber;
                                container44Color = Colors.white;
                                container55Color = Colors.white;
                                container66Color = Colors.white;
                                c3 = '3';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: container3333Color,
                              ),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text('3'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                container1111Color = Colors.white;
                                container2222Color = Colors.white;
                                container3333Color = Colors.white;
                                container44Color = Colors.amber;
                                container55Color = Colors.white;
                                container66Color = Colors.white;
                                c3 = '4';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: container44Color,
                              ),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text('4'),
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
                                container1111Color = Colors.white;
                                container2222Color = Colors.white;
                                container3333Color = Colors.white;
                                container44Color = Colors.white;
                                container55Color = Colors.amber;
                                container66Color = Colors.white;
                                c3 = '5';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container55Color),
                              height: 70,
                              width: 90,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(Icons.check)),
                                    Text('5'),
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
                                container1111Color = Colors.white;
                                container2222Color = Colors.white;
                                container3333Color = Colors.white;
                                container44Color = Colors.white;
                                container55Color = Colors.white;
                                container66Color = Colors.amber;
                                c3 = 'Others';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: container66Color),
                              height: 70,
                              width: 90,
                              child: const Column(
                                children: [
                                  IconButton(
                                      onPressed: null, icon: Icon(Icons.check)),
                                  Text('Others'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                            "   Select city",
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
                              child: Text("  " + valueItem),
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
                                  borderRadius: BorderRadius.circular(50)),
                              backgroundColor: Colors.amber),
                          onPressed: () async {
                            Map<String, dynamic> Sofa = {
                              'Color': c1,
                              'Sofa Quantity': c2,
                              'Cushion Quantity ': c3,
                              'Name': _nameController.text.trim(),
                              'Phone Number':
                                  _phoneNumberController.text.trim(),
                              'City': valueChoose,
                              'Area': _cityController.text.trim(),
                              'Address': _addressController.text.trim(),
                            };
                            await FirebaseFirestore.instance
                                .collection('Sofa Cleaning')
                                .doc()
                                .set(Sofa);
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
    );
  }
}
