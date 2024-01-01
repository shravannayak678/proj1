import 'package:flutter/material.dart';
import 'veribut.dart';
import 'veritext.dart';

class veri extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<veri> {
//text editing controllers

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  void Signuserin() {}

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back),
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
                    'Verification',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'We’ve sent you the verification code on ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'email Id : anuXXXXXdi@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 80,
                    child: textfield(
                      controller: controller1,
                      hinttext: '___',
                      obscuretext: false,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    width: 80,
                    child: textfield(
                      controller: controller2,
                      hinttext: '___',
                      obscuretext: false,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    width: 80,
                    child: textfield(
                      controller: controller3,
                      hinttext: '___',
                      obscuretext: false,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    width: 80,
                    child: textfield(
                      controller: controller4,
                      hinttext: '___',
                      obscuretext: false,
                    ),
                  ),
                ),
              ],
            ),
            //instead of copying the same code again simply calling the function which is pasted in textfield.dart

            const SizedBox(height: 35),
            mybutton(
              onTap: Signuserin,
            ),
          ],
        )),
      ),
    );
  }
}
