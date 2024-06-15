import 'package:fixandfit/contact-support.dart';
import 'package:fixandfit/home_screen.dart';
import 'package:fixandfit/login_screen.dart';
import 'package:fixandfit/notifications.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    const hoverColor = Color.fromRGBO(254, 206, 0, 1.000);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 254, 200, 1.000),
          title: const Text(
            'About Us',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
      drawer: Drawer(
        child: Material(
          color: Colors.black,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "Welcome to Kam Kaj",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text(
                  "home",
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AboutUs()));
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Image(image: AssetImage('assets/images/mission.jpeg')),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                child: Text(
                  'Our Company',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                child: Text(
                  'Fix & Fit is formed with the idea of giving all an improved and worriless lifestyle, promoting trustworthiness and goodwill ',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                child: Text(
                  'Our Vision',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                child: Text(
                  'Fix & Fit aspires to become an amazon of services and revolutionized the service providing industry of Pakistan. Currently we are facilitating our residential and commercial clients with 360+ services, and to futher facilitate your lives, we will soon expand our services and to further y 4000+. Our vision is to establish an institute to provide skilled education and professional careers to the skilled workers of Pakistan. Our aim is to bring economic stability to the country by eradicating unemployment and providing an oppurtunity for all    ',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 1),
                child: Text(
                  'Our Passion',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                child: Text(
                  'We are passionate about our goals and are always willing to go to extra mile to give customers the experience the yearn for and deserve',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
