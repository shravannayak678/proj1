import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool obscuretext;
  final IconData prefixIcon;

  const textfield({
    required this.controller,
    required this.hinttext,
    required this.obscuretext,
    required this.prefixIcon,
  });

  @override
  _textfieldState createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscuretext && _obscureText,
        style: TextStyle(fontSize: 14),
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
          prefixIcon: Icon(widget.prefixIcon, size: 19),
          hintStyle: TextStyle(color: Colors.grey[500]),
          suffixIcon: widget.obscuretext
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    size: 19,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}