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
    const hoverColor = Color.fromRGBO(254, 206, 0, 1.000);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 254, 200, 1.000),
        title: const Text(
          'Contact Support',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                openWhatsAppChat("+923361365902", "Hello I want some help");
              },
              child: const SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image(
                            image: AssetImage('assets/images/contact1.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                        child: Column(
                          children: [
                            Text(
                              '03323423423',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Click here to contact us on whatsapp')
                          ],
                        ),
                      )
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
                          height: 80,
                          width: 80,
                          child: Image(
                              image: AssetImage('assets/images/contact2.png')),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                        child: Column(
                          children: [
                            Text(
                              'Support@Fix&Fit.pk',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Click here to contact us through Email')
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      )),
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
