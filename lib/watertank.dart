import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WaterTankCleaning extends StatefulWidget {
  const WaterTankCleaning({super.key});

  @override
  State<WaterTankCleaning> createState() => _WaterTankCleaningState();
}

final _formkey = GlobalKey<FormState>();

class _WaterTankCleaningState extends State<WaterTankCleaning> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container3Color = Colors.white;
  Color container11Color = Colors.white;
  Color container22Color = Colors.white;
  Color container33Color = Colors.white;
  Color container44Color = Colors.white;
  Color container55Color = Colors.white;
  Color container66Color = Colors.white;
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
          backgroundColor: Colors.white,
          title: const Text(
            'Water Tank Cleaning',
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
                  'Choose your Service',
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
                      c1 = 'Overhead Tank';
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
                          image: AssetImage('assets/images/overhead.png'),
                          height: 60,
                          width: 90,
                        ),
                        Text('Overhead Tank '),
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
                      c1 = 'Underground Tank';
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
                            image: AssetImage('assets/images/underground.png'),
                            height: 60,
                            width: 90,
                          ),
                          Text('Underground Tank '),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    container1Color = Colors.white;
                    container2Color = Colors.white;
                    container3Color = Colors.amber;
                    c1 = 'Fiber Tank';
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: container3Color),
                  height: 90,
                  width: 150,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/fiber.png'),
                          height: 60,
                          width: 90,
                        ),
                        Text('Fiber Tank'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Text(
                  'Choose Your Tank Size in Gallons',
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
                      c2 = '100 Gallons';
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
                        Text('100'),
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
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      c2 = '500 Gallons';
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
                            '500',
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
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      c2 = '1000 Gallons';
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
                        Text('1000'),
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
                      container44Color = Colors.amber;
                      container55Color = Colors.white;
                      container66Color = Colors.white;
                      c2 = '3000 Gallons';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container44Color),
                    height: 70,
                    width: 90,
                    child: const Column(
                      children: [
                        IconButton(onPressed: null, icon: Icon(Icons.check)),
                        Text('3000'),
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
                      container44Color = Colors.white;
                      container55Color = Colors.amber;
                      container66Color = Colors.white;
                      c2 = '10000 Gallons';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container55Color),
                    height: 70,
                    width: 90,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text('10000'),
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
                      container44Color = Colors.white;
                      container55Color = Colors.white;
                      container66Color = Colors.amber;
                      c2 = 'Others';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: container66Color),
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Text(
                  'Service Price',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 172, 215, 250),
                    border: Border.all(color: Colors.grey.shade400)),
                height: 50,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(3, 3, 1, 3),
                  child: Text(
                    'Price may vary after inspection depend upon area and condition',
                    style: TextStyle(),
                    textAlign: TextAlign.start,
                  ),
                ),
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
                              shape: RoundedRectangleBorder(),
                              backgroundColor: Colors.amber),
                          onPressed: () async {
                            Map<String, dynamic> WaterTankService = {
                              'Service': c1,
                              'Tank Size': c2,
                              'Name': _nameController.text.trim(),
                              'Phone Number':
                                  _phoneNumberController.text.trim(),
                              'City': valueChoose,
                              'Area': _cityController.text.trim(),
                              'Address': _addressController.text.trim(),
                            };
                            await FirebaseFirestore.instance
                                .collection('Water Tank')
                                .doc()
                                .set(WaterTankService);
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
