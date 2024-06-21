import 'package:fixandfit/Curtain.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fixandfit/Floor.dart';
import 'package:fixandfit/Mattress.dart';
import 'package:fixandfit/Oven.dart';
import 'package:fixandfit/ACService.dart';
import 'package:fixandfit/bathroom.dart';
import 'package:fixandfit/carpet_cleaning.dart';
import 'package:fixandfit/cctv.dart';
import 'package:fixandfit/commercial.dart';
import 'package:fixandfit/contact-support.dart';
import 'package:fixandfit/aboutus.dart';
import 'package:fixandfit/deepCleaning.dart';
import 'package:fixandfit/generator.dart';

import 'package:fixandfit/gridview/cleaning%20services/exhasutFan_services.dart';
import 'package:fixandfit/gridview/cleaning%20services/sofacleaning.dart';
import 'package:fixandfit/kitchen.dart';
import 'package:fixandfit/login_screen.dart';
import 'package:fixandfit/notifications.dart';
import 'package:fixandfit/pestcontrol.dart';
import 'package:fixandfit/refrigerator.dart';
import 'package:fixandfit/rug.dart';
import 'package:fixandfit/washingmachine.dart';
import 'package:fixandfit/watertank.dart';
import 'package:fixandfit/window.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  // ignore: unused_field
  final TextEditingController _mobileController = TextEditingController();
  HomeScreen({super.key, required this.username});

  final List images = [
    {"id": 1, "imagepath": 'assets/images/bn1.jpg'},
    {"id": 2, "imagepath": 'assets/images/bn1.jpg'},
    {"id": 3, "imagepath": 'assets/images/bn1.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    const hoverColor = Color.fromRGBO(254, 206, 0, 1.000);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(241, 241, 241, 1.000),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                openWhatsAppChat("+923361365902", "Hello I want some help");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    alignment: Alignment.center,
                    image: AssetImage(
                      'assets/images/logowbg.png',
                    ),
                  ),
                  SizedBox(
                    child: Image(
                      image: AssetImage(
                        'assets/images/wp.png',
                      ),
                      height: 25,
                      width: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Material(
            color: Colors.black,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text(
                          "Welcome to Fix & Fit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        username == 'Guest'
                            ? 'You are logged in as Guest'
                            : 'Welcome, $username',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  hoverColor: hoverColor,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeScreen(
                              username: '',
                            )));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.phone, color: Colors.white),
                  title: const Text(
                    "Contact Support",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  hoverColor: hoverColor,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ContactSupport()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.notifications, color: Colors.white),
                  title: const Text(
                    "Notifications",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  hoverColor: hoverColor,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NotificationPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info_sharp, color: Colors.white),
                  title: const Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  hoverColor: hoverColor,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AboutUs()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.white),
                  title: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  hoverColor: hoverColor,
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(colors: [
          //   Color.fromRGBO(249, 253, 234, 1.000),
          //   Color.fromRGBO(247, 246, 194, 1.000),
          //   Color.fromRGBO(247, 245, 171, 1.000),
          //   Color.fromRGBO(245, 237, 190, 1.000),
          // ])),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                      items: images
                          .map((item) => Image.asset(
                                item['imagepath'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ))
                          .toList(),
                      options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          height: 220,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          autoPlay: true)),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                  child: Text(
                    'Cleaning Services',
                    style: TextStyle(
                        fontFamily: 'assets/images/fonts/Poppins-Bold.ttf',
                        fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                  child: Text(
                    'Give your ambience new life and breathe a new life to your surroundings ',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SofaCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color.fromRGBO(241, 241, 241, 1.000),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: Image(
                              image: AssetImage('assets/images/carpetcl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CarpetCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color.fromRGBO(241, 241, 241, 1.000),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: Image(
                              image: AssetImage('assets/images/rugcl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RugCleaning(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DeepCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MattressCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CurtainCleaning(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CommercialCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WindowCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const KitchenCleaning(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BathroomCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FloorCleaning(),
                                ));
                          },
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                  child: Text(
                    'Home Appliance Repair',
                    style: TextStyle(
                        fontFamily: 'assets/images/fonts/Poppins-Bold.ttf',
                        fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                  child: Text(
                    'Get the satisfaction you deserve and peace of mind up to the mark y repairing your home appliance by our technicians ',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Acservice(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WashingMashine(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Refrigerator(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OvenRepair(),
                                ));
                          },
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                  child: Text(
                    'Carpentry Services',
                    style: TextStyle(
                        fontFamily: 'assets/images/fonts/Poppins-Bold.ttf',
                        fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                  child: Text(
                    'A carpenter knows that carpentry is a work of art let our artist give you the service you deserve',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                  child: Text(
                    'Plumbing Services',
                    style: TextStyle(
                        fontFamily: 'assets/images/fonts/Poppins-Bold.ttf',
                        fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                  child: Text(
                    'Never doubt the resourcefulness of well-trained plumber, and our plumbers are not just well-trained but true professionals',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                  child: Text(
                    'Electric Services',
                    style: TextStyle(
                        fontFamily: 'assets/images/fonts/Poppins-Bold.ttf',
                        fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                  child: Text(
                    'Want your equipment at top condition? Well, wander no more. Avail services of our technicians right now.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExhaustFan(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 90,
                          width: 115,
                          child: const Image(
                            image: AssetImage('assets/images/sofacl.jpg'),
                            fit: BoxFit.cover,
                            // height: 35,
                            // width: 35,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExhaustFan(),
                              ));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 90,
                          width: 115,
                          child: const Image(
                            image: AssetImage('assets/images/sofacl.jpg'),
                            fit: BoxFit.cover,
                            // height: 35,
                            // width: 35,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExhaustFan(),
                              ));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 90,
                          width: 115,
                          child: const Image(
                            image: AssetImage('assets/images/sofacl.jpg'),
                            fit: BoxFit.cover,
                            // height: 35,
                            // width: 35,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExhaustFan(),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                  child: Text(
                    'Other Popular Services',
                    style: TextStyle(
                        fontFamily: 'assets/images/fonts/Poppins-Bold.ttf',
                        fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                  child: Text(
                    'Fix & Fit is not limiting itself just to basic services. We have so much more to offer. Almost anything that comes to your mind ',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PestControl(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WaterTankCleaning(),
                                ));
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Generator(),
                                ));
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 90,
                            width: 115,
                            child: const Image(
                              image: AssetImage('assets/images/sofacl.jpg'),
                              fit: BoxFit.cover,
                              // height: 35,
                              // width: 35,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CctvService(),
                                ));
                          },
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 85,
                          width: 110,
                        ),
                      ]),
                ),
              ]),
            ),
          ),
        ));
  }

  void openWhatsAppChat(String phoneNumber, String message) async {
    // Encode the message for use in the URL
    String encodedMessage = Uri.encodeComponent(message);

    // Construct the WhatsApp URL with the phone number and custom message
    String url = "https://wa.me/$phoneNumber?text=$encodedMessage";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle error, for example, show an alert
      print("Error launching WhatsApp");
    }
  }
}
