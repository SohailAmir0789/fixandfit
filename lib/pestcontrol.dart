import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PestControl extends StatefulWidget {
  const PestControl({super.key});

  @override
  State<PestControl> createState() => _PestControlState();
}

final _formkey = GlobalKey<FormState>();

class _PestControlState extends State<PestControl> {
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
  Color container88Color = Colors.white;
  Color container99Color = Colors.white;
  Color container999Color = Colors.white;
  Color container111Color = Colors.white;
  Color container222Color = Colors.white;

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
            'Pest Control Services',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        container7Color = Colors.white;
                        container8Color = Colors.white;
                        c1 = 'Mosquitoes/ Dengue Spray';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container1Color),
                      height: 100,
                      width: 150,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/mosquito.png',
                            ),
                            height: 60,
                            width: 60,
                          ),
                          Center(
                            child: Text(
                              'Mosquitoes/ Dengue Spray',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
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
                        container1Color = Colors.white;
                        container2Color = Colors.amber;
                        container3Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        container7Color = Colors.white;
                        container8Color = Colors.white;
                        c1 = 'Termite Treatments';
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
                              image: AssetImage(
                                'assets/images/service1.png',
                              ),
                              height: 60,
                              width: 60,
                            ),
                            Text(
                              'Termite Treatments',
                              style: TextStyle(fontSize: 12),
                            ),
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
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        container7Color = Colors.white;
                        container8Color = Colors.white;
                        c1 = 'Coackroaches Treatments';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container3Color),
                      height: 100,
                      width: 150,
                      child: const Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/bug.png',
                            ),
                            height: 60,
                            width: 60,
                          ),
                          Text(
                            'Coackroaches Treatment',
                            style: TextStyle(fontSize: 12),
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
                        container4Color = Colors.amber;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        container7Color = Colors.white;
                        container8Color = Colors.white;
                        c1 = 'Bed Bugs Treatments';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container4Color),
                      height: 100,
                      width: 150,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/coackroch.png',
                              ),
                              height: 60,
                              width: 60,
                            ),
                            Text(
                              'Bed bugs treatments',
                              style: TextStyle(fontSize: 12),
                            ),
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
                        container3Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.amber;
                        container6Color = Colors.white;
                        container7Color = Colors.white;
                        container8Color = Colors.white;
                        c1 = 'Flies and Ants Control Treatment';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container5Color),
                      height: 100,
                      width: 150,
                      child: const Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/flies.png',
                            ),
                            height: 60,
                            width: 60,
                          ),
                          Center(
                            child: Text(
                              'Flies and Ants Control Treatment',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
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
                        container1Color = Colors.white;
                        container2Color = Colors.white;
                        container3Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.amber;
                        container7Color = Colors.white;
                        container8Color = Colors.white;
                        c1 = 'General Fumigation';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container6Color),
                      height: 100,
                      width: 150,
                      child: const Center(
                          child: Text(
                        'General Fumigation',
                        textAlign: TextAlign.center,
                      )),
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
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        container7Color = Colors.amber;
                        container8Color = Colors.white;
                        c1 = 'Rodents/ Rats Control Treatment';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container7Color),
                      height: 100,
                      width: 150,
                      child: const Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/rat.png',
                            ),
                            height: 60,
                            width: 60,
                          ),
                          Center(
                            child: Text(
                              'Rodents/ Rats Control Treatment',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
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
                        container1Color = Colors.white;
                        container2Color = Colors.white;
                        container3Color = Colors.white;
                        container4Color = Colors.white;
                        container5Color = Colors.white;
                        container6Color = Colors.white;
                        container7Color = Colors.white;
                        container8Color = Colors.amber;
                        c1 = 'Sanitization Service';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container8Color),
                      height: 100,
                      width: 150,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/doctor.png',
                              ),
                              height: 60,
                              width: 60,
                            ),
                            Text(
                              'Sanitization Service',
                              style: TextStyle(fontSize: 12),
                            ),
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
                    'Choose Your area Size',
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
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'Kitchen';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container11Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                        child: Text(
                          'Kitchen',
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
                        container22Color = Colors.amber;
                        container33Color = Colors.white;
                        container44Color = Colors.white;
                        container55Color = Colors.white;
                        container66Color = Colors.white;
                        container77Color = Colors.white;
                        container88Color = Colors.white;
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'Bathroom';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container22Color),
                      height: 50,
                      width: 150,
                      child: const Center(child: Text('Bathroom')),
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
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'House 60 Gaz (2.5 Marla)';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container33Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                        child: Center(
                          child: Text(
                            'House 60 Gaz (2.5 Marla)',
                            textAlign: TextAlign.center,
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
                        container11Color = Colors.white;
                        container22Color = Colors.white;
                        container33Color = Colors.white;
                        container44Color = Colors.amber;
                        container55Color = Colors.white;
                        container66Color = Colors.white;
                        container77Color = Colors.white;
                        container88Color = Colors.white;
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'House 80 Gaz (3 Marla)';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container44Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                          child: Center(
                              child: Text('House 80 Gaz (3 Marla)',
                                  textAlign: TextAlign.center))),
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
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'House 120 Gaz (5 Marla)';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container55Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                        child: Text('House 120 Gaz (5 Marla)',
                            textAlign: TextAlign.center),
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
                        container77Color = Colors.white;
                        container88Color = Colors.white;
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'House 240 Gaz (10 Marla)';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container66Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                          child: Text('House 240 Gaz (10 Marla)',
                              textAlign: TextAlign.center)),
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
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'House 300 Gaz (12 Marla)';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container77Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                        child: Text('House 300 Gaz (12 Marla)',
                            textAlign: TextAlign.center),
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
                        container66Color = Colors.white;
                        container77Color = Colors.white;
                        container88Color = Colors.amber;
                        container99Color = Colors.white;
                        container999Color = Colors.white;
                        c2 = 'House 500 Gaz (1 Canal)';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container88Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                          child: Text('House 500 Gaz (1 Canal)',
                              textAlign: TextAlign.center)),
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
                        container77Color = Colors.white;
                        container88Color = Colors.white;
                        container99Color = Colors.amber;
                        container999Color = Colors.white;
                        c2 = 'House 1000 Gaz (2 Marla)';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container99Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                        child: Text('House 1000 Gaz (2 Marla)',
                            textAlign: TextAlign.center),
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
                        container66Color = Colors.white;
                        container77Color = Colors.white;
                        container88Color = Colors.white;
                        container99Color = Colors.white;
                        container999Color = Colors.amber;
                        c2 = 'Others';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          color: container999Color),
                      height: 50,
                      width: 150,
                      child: const Center(
                          child: Text('Others', textAlign: TextAlign.center)),
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
                    'Choose your Story',
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
                        c3 = 'Single Story';
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
                          IconButton(onPressed: null, icon: Icon(Icons.check)),
                          Text('Single Story'),
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
                        c3 = 'Double Story';
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
                            IconButton(
                                onPressed: null, icon: Icon(Icons.check)),
                            Text('Doule Story'),
                          ],
                        ),
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
                              Map<String, dynamic> PestControlService = {
                                'Service': c1,
                                'Area Size': c2,
                                'Story': c3,
                                'Name': _nameController.text.trim(),
                                'Phone Number':
                                    _phoneNumberController.text.trim(),
                                'City': valueChoose,
                                'Area': _cityController.text.trim(),
                                'Address': _addressController.text.trim(),
                              };
                              await FirebaseFirestore.instance
                                  .collection('Pest Control Service')
                                  .doc()
                                  .set(PestControlService);
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
