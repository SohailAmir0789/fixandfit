import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fixandfit/custom/customHeading.dart';
import 'package:fixandfit/custom/customTextFormField.dart';
import 'package:fixandfit/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  final String mobileNumber;
  const SignUpScreen(
    this.mobileNumber, {
    super.key,
    required String username,
  });

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var valueChoose;
  List listItem = ["karachi", "Lahore"];
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  get mobileNumber => null;

  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
    String mobileNumber,
    String city,
  ) async {
    try {
      // Create user in Firebase Authentication
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Get the user's ID
      String uid = userCredential.user!.uid;

      // Create a user document in Firestore
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'name': _nameController.text,
        'email': _emailController.text,
        'mobileNumber': widget.mobileNumber,
        'Area': _cityController.text,
        'City': valueChoose,
        'address': _addressController.text,
      });
      // Sign-up successful
      // You can add additional logic here, like storing user data in Firestore

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    username: name,
                  )));
    } catch (e) {
      // Handle sign-up errors
      print('Error during sign-up: $e');
      // You can show an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Customheading(title: "SignUp"),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 2),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Customtextformfield(contName: _nameController, txt: "Name"),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(254, 206, 0, 1.000),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' Mobile Number : ${widget.mobileNumber}',
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Customtextformfield(
                        contName: _emailController, txt: "Email"),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: DropdownButton(
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        hint: Text(
                          " Select City",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade400),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Customtextformfield(contName: _cityController, txt: "Area"),
                    const SizedBox(
                      height: 20,
                    ),
                    Customtextformfield(
                        contName: _addressController, txt: "Address"),
                    const SizedBox(
                      height: 20,
                    ),
                    Customtextformfield(
                        contName: _passwordController, txt: "Password"),
                    const SizedBox(
                      height: 20,
                    ),
                    Customtextformfield(
                        contName: _retypePasswordController,
                        txt: "Comfirm Password"),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        minimumSize: const Size(400, 50),
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, call signUpWithEmailAndPassword
                          signUpWithEmailAndPassword(
                            _emailController.text,
                            _passwordController.text,
                            _nameController.text,
                            _phoneNumberController.text,
                            _cityController.text,
                          );
                        }
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
