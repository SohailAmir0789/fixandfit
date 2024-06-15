import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WindowCleaning extends StatefulWidget {
  const WindowCleaning({super.key});

  @override
  State<WindowCleaning> createState() => _WindowCleaningState();
}

final _formkey = GlobalKey<FormState>();

class _WindowCleaningState extends State<WindowCleaning> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container11Color = Colors.white;

  Color container22Color = Colors.white;

  Color container33Color = Colors.white;
  Color container111Color = Colors.white;

  Color container222Color = Colors.white;

  Color container333Color = Colors.white;
  Color container4Color = Colors.white;

  Color container5Color = Colors.white;

  Color container6Color = Colors.white;

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
            'Window Cleaning',
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
                  'Choose Your Window',
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
                      c1 = 'with Grill';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container1Color,
                    ),
                    height: 90,
                    width: 150,
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/window2.png'),
                          height: 60,
                          width: 90,
                        ),
                        Text('With Grill'),
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
                      c1 = 'without Grill';
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
                            image: AssetImage('assets/images/window1.png'),
                            height: 60,
                            width: 90,
                          ),
                          Text('Without Grill'),
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
                  'Window Size',
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
                      c2 = 'small';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container11Color),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('Small'),
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
                      c2 = 'Medium';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container22Color),
                    height: 70,
                    width: 90,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            'Medium',
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
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.amber;
                      c2 = 'Large';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container33Color),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('Large'),
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
                  'Number of Windows',
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
                      container4Color = Colors.white;
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      c3 = '1';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container111Color),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 13),
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
                      container4Color = Colors.white;
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      c3 = '2';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container222Color),
                    height: 70,
                    width: 90,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
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
                      container111Color = Colors.white;
                      container222Color = Colors.white;
                      container333Color = Colors.amber;
                      container4Color = Colors.white;
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      c3 = '3';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container333Color),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 13),
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
                      container4Color = Colors.amber;
                      container5Color = Colors.white;
                      container6Color = Colors.white;
                      c3 = '4';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container4Color),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text(
                          '4',
                          style: TextStyle(fontSize: 13),
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
                      container4Color = Colors.white;
                      container5Color = Colors.amber;
                      container6Color = Colors.white;
                      c3 = '5';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container5Color),
                    height: 70,
                    width: 90,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text(
                            '5',
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
                      container111Color = Colors.white;
                      container222Color = Colors.white;
                      container333Color = Colors.white;
                      container4Color = Colors.white;
                      container5Color = Colors.white;
                      container6Color = Colors.amber;
                      c3 = 'Others';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container6Color),
                    height: 70,
                    width: 90,
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
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.amber),
                          onPressed: () async {
                            Map<String, dynamic> Window = {
                              'Window Type': c1,
                              'Window Size': c2,
                              'Num of Windows': c3,
                              'Name': _nameController.text.trim(),
                              'Phone Number':
                                  _phoneNumberController.text.trim(),
                              'City': valueChoose,
                              'Area': _cityController.text.trim(),
                              'Address': _addressController.text.trim(),
                            };
                            await FirebaseFirestore.instance
                                .collection('Window Cleaning')
                                .doc()
                                .set(Window);
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
