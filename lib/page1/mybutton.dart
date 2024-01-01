import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final Function()? onTap;
  const mybutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 54),
        decoration: BoxDecoration(
            color: Color.fromARGB(192, 3, 71, 242), borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 55,),
              Container(
              // Adjust the padding as needed
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(179, 52, 79, 227),
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 173, 198, 245),
              ),
                 
               ),
                  
                
          ]
              ),
        ),
      );
  }
}
