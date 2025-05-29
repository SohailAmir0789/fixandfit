import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EcoButton extends StatelessWidget {
  String? title;
  bool? isLoginButton;
  VoidCallback? onPress;
  bool? isLoading;

  EcoButton(
      {super.key,
      this.title,
      this.isLoading = false,
      this.isLoginButton = false,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: isLoginButton == false ? Colors.white : Colors.black,
            border: Border.all(
                color: isLoginButton == false ? Colors.black : Colors.black),
            borderRadius: BorderRadius.circular(50)),
        child: Stack(
          children: [
            Visibility(
              visible: isLoading! ? false : true,
              child: Center(
                child: Text(
                  title ?? "button",
                  style: TextStyle(
                      color:
                          isLoginButton == false ? Colors.black : Colors.white,
                      fontSize: 16),
                ),
              ),
            ),
            Visibility(
              visible: isLoading!,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
