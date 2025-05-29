import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSupport extends StatefulWidget {
  const ContactSupport({super.key});

  @override
  State<ContactSupport> createState() => _ContactSupportState();
}

class _ContactSupportState extends State<ContactSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Contact Support',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              child: const Image(image: AssetImage('assets/images/contact2.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  openWhatsAppChat("+923361365902", "Hello I want some help");
                },
                child: const Card(
                  child: Row(
                    children: [
                      SizedBox(
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image(
                              image: AssetImage('assets/images/whatsapp.png')),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                        child: Column(
                          children: [
                            Text(
                              ' 03323423423',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(' Contact us on whatsapp')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  launch(
                      'mailto:msohailamir123@gmail.com?subject=hi I want some help');
                },
                child: const SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image(
                                image: AssetImage('assets/images/email.png')),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                          child: Column(
                            children: [
                              Text(
                                ' Support@Fix&Fit.pk',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(' Contact us through Email')
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  launch(
                      'mailto:msohailamir123@gmail.com?subject=hi I want some help');
                },
                child: const SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image(
                                image: AssetImage('assets/images/www.png')),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                          child: Column(
                            children: [
                              Text(
                                ' Support@Fix&Fit.pk',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(' Contact us through Email')
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        )),
      ),
    );
  }
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
