import 'package:flutter/material.dart';

class squaretile extends StatelessWidget {
  final String
      imagepath; 
      final String tex;// since the only difference between the two images is the path only.
  const squaretile({super.key, required this.imagepath,required this.tex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Color.fromARGB(255, 250, 249, 249),
      ),
      
      child: Row(
        children: [
          Image.asset(
            imagepath,
            height: 30,
          ),
          Text('tex'),
        ],
      ),
    );
  }
}
