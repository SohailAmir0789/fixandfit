import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Refrigerator extends StatefulWidget {
  const Refrigerator({super.key});

  @override
  State<Refrigerator> createState() => _RefrigeratorState();
}

final _formkey = GlobalKey<FormState>();

class _RefrigeratorState extends State<Refrigerator> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container11Color = Colors.white;
  Color container22Color = Colors.white;
  Color container33Color = Colors.white;
  Color container44Color = Colors.white;
  Color container55Color = Colors.white;
  Color container66Color = Colors.white;
  Color container77Color = Colors.white;
  Color container88Color = Colors.white;

  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  late String c1;
  late String c2;

  var valueChoose;
  List listItem = ["karachi", "Lahore"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 233, 155),
          title: const Text(
            'Refrigerator Repair Service',
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
                  'Choose Your Refrigerator',
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
                      c1 = 'Refrigerator';
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
                          image: AssetImage('assets/images/refrigerator.png'),
                          height: 60,
                          width: 90,
                        ),
                        Text('Refrigerator'),
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
                      c1 = 'Deep Freezer';
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
                            image: AssetImage('assets/images/deepfr.png'),
                            height: 60,
                            width: 90,
                          ),
                          Text('Deep Freezer'),
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
                      container11Color = Colors.amber;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      container88Color = Colors.white;
                      c2 = 'Lg';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container11Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child:
                            Image(image: AssetImage('assets/images/lg1.png'))),
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
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      container88Color = Colors.white;
                      c2 = 'Dawlance';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container22Color),
                    height: 90,
                    width: 150,
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/dawlance1.png'))),
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
                      container33Color = Colors.amber;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      container88Color = Colors.white;
                      c2 = 'Haier';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container33Color),
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
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.amber;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      container88Color = Colors.white;
                      c2 = 'Orient';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container44Color),
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
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.amber;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      container88Color = Colors.white;
                      c2 = 'Kenwood';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container55Color),
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
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.amber;
                      container77Color = Colors.white;
                      container88Color = Colors.white;
                      c2 = 'Pel';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container66Color),
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
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.amber;
                      container88Color = Colors.white;
                      c2 = 'Samsung';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container77Color),
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
                      container11Color = Colors.white;
                      container22Color = Colors.white;
                      container33Color = Colors.white;
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      container77Color = Colors.white;
                      container88Color = Colors.amber;
                      c2 = 'Other Companies';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container88Color),
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
                      SizedBox(
                        height: 35,
                        width: 480,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.amber),
                          onPressed: () async {
                            Map<String, dynamic> Refrigerator = {
                              'Refregerator Type': c1,
                              'Brand': c2,
                              'Name': _nameController.text.trim(),
                              'Phone Number':
                                  _phoneNumberController.text.trim(),
                              'City': valueChoose,
                              'Area': _cityController.text.trim(),
                              'Address': _addressController.text.trim(),
                            };
                            await FirebaseFirestore.instance
                                .collection('Refrigerator')
                                .doc()
                                .set(Refrigerator);
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
