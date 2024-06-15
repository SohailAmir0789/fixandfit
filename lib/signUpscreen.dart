import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fixandfit/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  final String mobileNumber;
  SignUpScreen(
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

      // Navigate to the home screen
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    username: '$name',
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
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 150,
              width: 200,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/fixlogo.png",
                ),

                // height: 150,
                // width: 200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 16),
              child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 1, 16, 2),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
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
                              style: TextStyle(
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
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400))),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
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
                    TextFormField(
                      controller: _cityController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          labelText: 'Area',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Area';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _addressController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          labelText: 'Enter Your Address',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400))),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty || value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _retypePasswordController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400))),
                      obscureText: true,
                      validator: (value) {
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        minimumSize: Size(400, 50),
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
