import 'package:flutter/material.dart';
import 'package:proj1/page4/veri.dart';
import 'resbut.dart';
import 'restext.dart';

class resetpass extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<resetpass>  {
//text editing controllers

  final usernamecontroller = TextEditingController();
  void Signuserin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => veri()),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 246, 246),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),

                const SizedBox(height: 25),
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children:[ Icon(Icons.arrow_back),
                              ],
                  ),
                ),
const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        'Reset Password',
                        style: TextStyle(color:Colors.black,fontSize: 22,fontWeight: FontWeight.bold ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Please enter your email address to',
                        style: TextStyle(color:Colors.black,fontSize: 15, ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'request a password reset',
                        style: TextStyle(color:Colors.black,fontSize: 15,),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                textfield(
                  controller: usernamecontroller,
                  hinttext: 'abc@gmail.com',
                  prefixIcon: Icons.email,
                  obscuretext: false,
                ),
                //instead of copying the same code again simply calling the function which is pasted in textfield.dart
               
                const SizedBox(height: 35),
                mybutton(
                  onTap: Signuserin,
                ),

               
                


           
                  ],
                )
            ),
          ),
        );
  }
}
