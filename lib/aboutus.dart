import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'About Us',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
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
