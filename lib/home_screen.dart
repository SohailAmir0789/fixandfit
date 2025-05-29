import 'package:fixandfit/Curtain.dart';
import 'package:fixandfit/custom/customHeading.dart';
import 'package:fixandfit/custom/customGridview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fixandfit/Floor.dart';
import 'package:fixandfit/Mattress.dart';
import 'package:fixandfit/Oven.dart';
import 'package:fixandfit/ACService.dart';
import 'package:fixandfit/bathroom.dart';
import 'package:fixandfit/carpet_cleaning.dart';
import 'package:fixandfit/cctv.dart';
import 'package:fixandfit/commercial.dart';
import 'package:fixandfit/deepCleaning.dart';
import 'package:fixandfit/generator.dart';
import 'package:fixandfit/exhasutFan_services.dart';
import 'package:fixandfit/sofacleaning.dart';
import 'package:fixandfit/kitchen.dart';
import 'package:fixandfit/pestcontrol.dart';
import 'package:fixandfit/refrigerator.dart';
import 'package:fixandfit/rug.dart';
import 'package:fixandfit/washingmachine.dart';
import 'package:fixandfit/watertank.dart';
import 'package:fixandfit/window.dart';
import 'package:flutter/material.dart';

//import 'package:carousel_slider/carousel_slider.dart';
class HomeScreen extends StatelessWidget {
  String username;

  HomeScreen({super.key, required this.username});

  final TextEditingController _mobileController = TextEditingController();

  final List images = [
    {"id": 1, "imagepath": 'assets/images/bnr1.jpg'},
    {"id": 2, "imagepath": 'assets/images/bnr2.jpg'},
    {"id": 3, "imagepath": 'assets/images/bnr3.jpg'},
    {"id": 4, "imagepath": 'assets/images/bnr4.jpg'},
    {"id": 5, "imagepath": 'assets/images/bnr5.jpg'},
    {"id": 6, "imagepath": 'assets/images/bnr6.jpg'},
    {"id": 7, "imagepath": 'assets/images/bnr7.jpg'},
  ];

  final List cleaningdata = [
    {
      'id': 1,
      'image': 'assets/images/sofac.png',
      'onTap': const SofaCleaning()
    },
    {
      'id': 2,
      'image': 'assets/images/carpetc.png',
      'onTap': const CarpetCleaning()
    },
    {'id': 3, 'image': 'assets/images/rugc.png', 'onTap': const RugCleaning()},
    {
      'id': 4,
      'image': 'assets/images/deepc.png',
      'onTap': const DeepCleaning()
    },
    {
      'id': 5,
      'image': 'assets/images/mattressc.png',
      'onTap': const MattressCleaning()
    },
    {
      'id': 6,
      'image': 'assets/images/curtainc.png',
      'onTap': const CurtainCleaning()
    },
    {
      'id': 7,
      'image': 'assets/images/commercialc.png',
      'onTap': const CommercialCleaning()
    },
    {
      'id': 8,
      'image': 'assets/images/windowc.png',
      'onTap': const WindowCleaning()
    },
    {
      'id': 9,
      'image': 'assets/images/kitchenc.png',
      'onTap': const KitchenCleaning()
    },
    {
      'id': 10,
      'image': 'assets/images/bathroomc.png',
      'onTap': const BathroomCleaning()
    },
    {
      'id': 11,
      'image': 'assets/images/floorc.png',
      'onTap': const FloorCleaning()
    },
  ];

  final List HomeAppliancedata = [
    {'id': 1, 'image': 'assets/images/sofac.png', 'onTap': const Acservice()},
    {
      'id': 2,
      'image': 'assets/images/carpetc.png',
      'onTap': const WashingMashine()
    },
    {'id': 3, 'image': 'assets/images/rugc.png', 'onTap': const Refrigerator()},
    {'id': 4, 'image': 'assets/images/deepc.png', 'onTap': const OvenRepair()},
  ];

  final List carpentrydata = [
    {'id': 1, 'image': 'assets/images/bedc.png', 'onTap': const ExhaustFan()},
    {
      'id': 2,
      'image': 'assets/images/cabinetc.png',
      'onTap': const ExhaustFan()
    },
    {'id': 3, 'image': 'assets/images/door.png', 'onTap': const ExhaustFan()},
    {
      'id': 4,
      'image': 'assets/images/doorlockc.png',
      'onTap': const ExhaustFan()
    },
    {
      'id': 5,
      'image': 'assets/images/wardrobe.png',
      'onTap': const ExhaustFan()
    },
    {
      'id': 6,
      'image': 'assets/images/windowc.png',
      'onTap': const ExhaustFan()
    },
  ];

  final List plumbingdata = [
    {
      'id': 1,
      'image': 'assets/images/bathroomc.png',
      'onTap': const ExhaustFan()
    },
    {
      'id': 2,
      'image': 'assets/images/kitchenc.png',
      'onTap': const ExhaustFan()
    },
    {
      'id': 3,
      'image': 'assets/images/watermotorc.png',
      'onTap': const ExhaustFan()
    },
    {
      'id': 4,
      'image': 'assets/images/watertankc.png',
      'onTap': const ExhaustFan()
    },
  ];

  final List electricdata = [
    {
      'id': 1,
      'image': 'assets/images/breakerc.png',
      'onTap': const ExhaustFan()
    },
    {
      'id': 2,
      'image': 'assets/images/exhaustc.png',
      'onTap': const ExhaustFan()
    },
    {'id': 3, 'image': 'assets/images/fanc.png', 'onTap': const ExhaustFan()},
    {'id': 4, 'image': 'assets/images/lightc.png', 'onTap': const ExhaustFan()},
    {
      'id': 5,
      'image': 'assets/images/switchc.png',
      'onTap': const ExhaustFan()
    },
    {
      'id': 6,
      'image': 'assets/images/wiringc.png',
      'onTap': const ExhaustFan()
    },
  ];

  final List otherdata = [
    {'id': 1, 'image': 'assets/images/pestc.png', 'onTap': const PestControl()},
    {
      'id': 2,
      'image': 'assets/images/watertankc.png',
      'onTap': const WaterTankCleaning()
    },
    {
      'id': 3,
      'image': 'assets/images/generatorc.png',
      'onTap': const Generator()
    },
    {'id': 4, 'image': 'assets/images/cctvc.png', 'onTap': const CctvService()},
  ];

  @override
  Widget build(BuildContext context) {
    const hoverColor = Color.fromRGBO(250, 243, 185, 1.000);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              openWhatsAppChat("+923361365902", "Hello I want some help");
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  alignment: Alignment.center,
                  image: AssetImage(
                    'assets/images/logoo.png',
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Image(
                      image: AssetImage(
                        'assets/images/wpicon.png',
                      ),
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(249, 253, 234, 1.000),
          Color.fromRGBO(247, 246, 194, 1.000),
          Color.fromRGBO(247, 245, 171, 1.000),
          Color.fromRGBO(245, 237, 190, 1.000),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: ListView(children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: CarouselSlider(
              //       items: images
              //           .map((item) => Image.asset(
              //                 item['imagepath'],
              //                 fit: BoxFit.fill,
              //                 width: double.infinity,
              //               ))
              //           .toList(),
              //       options: CarouselOptions(
              //           scrollPhysics: const BouncingScrollPhysics(),
              //           height: 220,
              //           aspectRatio: 1,
              //           viewportFraction: 1,
              //           autoPlay: true)),
              // ),
              const Customheading(title: 'Cleaning Services'),
              customGridView(
                  length: cleaningdata.length, listName: cleaningdata),
              const Customheading(title: 'Home Appliance Repair'),
              customGridView(
                  length: HomeAppliancedata.length,
                  listName: HomeAppliancedata),
              const Customheading(title: 'Carpentry Services'),
              customGridView(
                  length: carpentrydata.length, listName: carpentrydata),
              const Customheading(title: 'Plumbing Services'),
              customGridView(
                  length: plumbingdata.length, listName: plumbingdata),
              const Customheading(title: 'Electric Services'),
              customGridView(
                  length: electricdata.length, listName: electricdata),
              const Customheading(title: 'Other Popular Services'),
              customGridView(length: otherdata.length, listName: otherdata),
            ]),
          ),
        ),
      ),
    );
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
