import 'package:firebase_auth/firebase_auth.dart';
import 'package:fixandfit/home_screen.dart';
import 'package:fixandfit/signUpscreen.dart';

import 'package:fixandfit/widget/eco_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  String? Function(String?)? validate;

  LoginScreen({
    Key? key,
    this.validate,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    backgroundColor: Color.fromRGBO(254, 206, 0, 1.000),
  );

  Future<void> _loginAsGuest(BuildContext context) async {
    try {
      // Sign in as a guest using anonymous authentication
      await _auth.signInAnonymously();

      // Navigate to the home screen or perform other actions
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomeScreen(
                  username: '',
                )),
      );
    } catch (e) {
      print("Error signing in as a guest: $e");
    }
  }

  final TextEditingController mobileController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  bool formStateLoading = false;

  @override
  void dispose() {
    mobileController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        //backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const Image(image: AssetImage("assets/images/fixlogo.png")),
                  Form(
                      key: formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              // decoration: BoxDecoration(
                              //     border:
                              //         Border.all(color: Colors.grey.shade400),
                              //     borderRadius: BorderRadius.circular(5)),
                              child: TextFormField(
                                controller: mobileController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    icon: Icon(Icons.login),
                                    hintText: 'Phone Number',
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade800)),
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
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: EcoButton(
                                  title: "Login / Sign Up",
                                  isLoading: formStateLoading,
                                  isLoginButton: true,
                                  onPress: () {
                                    if (formkey.currentState!.validate()) {
                                      // If the form is valid, proceed with sign up
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpScreen(
                                                    mobileController.text,
                                                    username: '',
                                                  )));
                                    }
                                  }),
                            ),
                          )
                        ],
                      )),
                  Container(
                    height: 80,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          // Handle guest login logic
                          _performGuestLogin(context);
                        },
                        child: const Text(
                          'Guest Login',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

void _performGuestLogin(BuildContext context) {
  // Implement your guest login logic here
  // For example, you might want to set the user as a guest and navigate to the main screen
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen(username: 'Guest')),
  );
}
