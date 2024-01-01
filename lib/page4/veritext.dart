import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool obscuretext;

  const textfield({
    required this.controller,
    required this.hinttext,
    required this.obscuretext,
  });

  @override
  _textfieldState createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Center(
        child: TextField(
          maxLength: 1,
          keyboardType: TextInputType.number,
          controller: widget.controller,
          obscureText: widget.obscuretext && _obscureText,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Color.fromARGB(255, 231, 229, 229)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Color.fromARGB(228, 158, 158, 158)),
            ),
            fillColor: Color.fromARGB(255, 251, 250, 250),
            filled: true,
            hintText: widget.hinttext,
            hintStyle: TextStyle(color: Colors.grey[500]),
            counter: SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
