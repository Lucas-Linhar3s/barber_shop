import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  String label;
  IconData prefixIcon;
  IconData? suffixIcon;
  void Function()? onPressedShowPassword;
  TextEditingController controller;
  String hintText;
  CustomTextFormField({
    Key? key,
    required this.label,
    required this.prefixIcon,
    required this.suffixIcon,
    this.onPressedShowPassword,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      autocorrect: false,
      autofocus: false,
      controller: widget.controller,
      decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: IconButton(
                icon: Icon(widget.suffixIcon),
                onPressed: widget.onPressedShowPassword),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Icon(widget.prefixIcon),
          ),
          contentPadding: EdgeInsets.all(20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 2)),
          labelText: widget.label,
          alignLabelWithHint: true,
          labelStyle: TextStyle(fontFamily: 'RobotoSlab'),
          hintText: widget.hintText,
          hintStyle: TextStyle(fontFamily: 'RobotoSlab')),
    );
  }
}
