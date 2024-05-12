import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
       width: 200,
      height: 30,
      child: TextField(
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'search',
            contentPadding:  EdgeInsets.symmetric(vertical: 5.0),
            filled: true,
            border: OutlineInputBorder(
              gapPadding:0 ,
              borderSide: BorderSide(width: 0,strokeAlign: 0,color: Colors.transparent),
              borderRadius: BorderRadius.all( Radius.circular(50)),
            ),),
      ),
    );
  }
}
