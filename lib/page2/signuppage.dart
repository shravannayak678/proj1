import 'package:flutter/material.dart';
import 'mybut.dart';
import 'textfe.dart';
import 'package:proj1/page1/Loginpage.dart';

class signuppage extends StatefulWidget {
  @override
  signuppageState createState() => signuppageState();
}

class signuppageState extends State<signuppage>  {
//text editing controllers

  final usernamecontroller = TextEditingController();  //chamge the name if needed since its not needed now
  final passwordcontroller = TextEditingController();
  final verifycontroller = TextEditingController();
  final fullnamecontroller = TextEditingController();
  bool isRememberMeChecked = false;
  void Signuserin() {
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 246, 246),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                const SizedBox(
                  height: 50,
                ),
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
                  
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up',
                        style: TextStyle(color:Colors.black,fontSize: 22,fontWeight: FontWeight.bold ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
               textfield(
                  controller: fullnamecontroller,
                  hinttext: 'Full name',
                  prefixIcon: Icons.person,
                  obscuretext: false,
                ),
              const SizedBox(height: 10),
                textfield(
                  controller: usernamecontroller,
                  hinttext: 'abc@gmail.com',
                  prefixIcon: Icons.email,
                  obscuretext: false,
                ),

                //instead of copying the same code again simply calling the function which is pasted in textfield.dart
                const SizedBox(height: 10),

                textfield(
                  controller: passwordcontroller,
                  hinttext: 'Your password',
                  prefixIcon: Icons.lock,
                  obscuretext:
                      true, //it means only password cant be seen while typing.
                ),
                const SizedBox(height: 10,),
               textfield(
                  controller: verifycontroller,
                  hinttext: 'Confirm password',
                  prefixIcon: Icons.lock,
                  obscuretext:
                      true, //it means only password cant be seen while typing.
                ),



              
                const SizedBox(height: 35),
                mybutton(
                  onTap: Signuserin,
                ),

                const SizedBox(height: 90),
        Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OR',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
        ),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(12),
                  margin:EdgeInsets.symmetric(horizontal: 54),
                  
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white70),
                  borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 255, 255, 255)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset(
                  'lib/images/google.jfif', // Replace with your Google icon image path
                  width: 30,
                  height: 30,
                  // Adjust width and height as needed
                              ),
                              SizedBox(width: 10), // Adding space between icon and text
                              Text(
                  'Login with Google',
                  style: TextStyle(
                    fontSize: 14,
                    
                  ),
                              ),
                               ],
                  ),
                ),


                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: 4,
                    ),

                    
          GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Loginpage()),
        );
      },
      child: Text(
        'Sign in',
        style: TextStyle(color: Colors.blue),
      ),
         )
                  
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
