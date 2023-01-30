// ignore_for_file: prefer_const_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';

class TextFormGest extends StatelessWidget {
  TextFormGest(
      {Key? key,
      required this.controller,
      required this.errormessage,
      required this.icon,
      this.obscure = false,
      this.readonly = false,
      this.textInputtype = TextInputType.text,
      required this.hinttext})
      : super(key: key);

  final TextEditingController controller;
  final String errormessage;
  final IconData icon;
  bool obscure;
  bool readonly;
  final String hinttext;
  TextInputType? textInputtype;

  String? validat(val) {
    if (val == "") {
      return errormessage;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readonly,
      obscureText: obscure,
      controller: controller,
      validator: (val) {
        if (val == "") {
          return errormessage;
        }
        return null;
      },
      keyboardType: textInputtype,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.grey.shade700,
            size: 26,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.red),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 2, color: Color.fromARGB(255, 204, 202, 202)),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: hinttext),
    );
  }
}
