import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EcoTextField extends StatefulWidget {
  String? hintText;
  TextEditingController? controller;
  String? Function(String?)? validate;
  Widget? icon;
  bool isPassowrd;
  bool check;
  int? maxLines;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  EcoTextField({
    super.key,
    this.hintText,
    this.controller,
    this.validate,
    this.maxLines,
    this.icon,
    this.check = false,
    this.inputAction,
    this.focusNode,
    this.isPassowrd = false,
    required bool isPassword,
  });

  @override
  State<EcoTextField> createState() => _EcoTextFieldState();
}

class _EcoTextFieldState extends State<EcoTextField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        maxLines: widget.maxLines == 1 ? 1 : widget.maxLines,
        focusNode: widget.focusNode,
        textInputAction: widget.inputAction,
        controller: widget.controller,
        obscureText: widget.isPassowrd == true ? true : widget.isPassowrd,
        validator: widget.validate,
        decoration: InputDecoration(
          hintText: widget.hintText ?? 'hint Text...',
          hintStyle: TextStyle(color: Colors.grey.shade400),
          suffixIcon: widget.icon,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
