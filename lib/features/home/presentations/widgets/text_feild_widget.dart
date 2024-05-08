import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'search',
            contentPadding:EdgeInsets.all(8),
            filled: true,/*
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 0.5,strokeAlign: 0.5),
              borderRadius: BorderRadius.circular(8),
            )*/),
      ),
    );
  }
}
