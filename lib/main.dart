import 'package:flutter/material.dart';
import 'package:login_screen/signup.dart';

import 'login.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: homeScreen()));
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color:Color.fromARGB(255, 220, 235, 240),
        child: Column(
          
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Text("Hello There!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
              ), 
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top:30, bottom: 60),
                child: Text('''Automatic identity verfication which wnable you to 
                                       verify identity'''),
              ),
            ),
            Image.asset("assets/img1.jpg",width: double.infinity,),
               SizedBox(height: 30,),         
            TextButton(
              style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                primary:Colors.white,
                backgroundColor: Colors.blue,
                ),            
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
              child: Text('Login')),
              SizedBox(height: 20,),
             TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 145, vertical: 20),
                primary:Colors.black,
                backgroundColor: Colors.red,
                ),            
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
              child: Text('SignUp')),           
          ],
        ),
      ),
      
    );
  }
}
