import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohaib_task/utils/customize_button.dart';
import 'package:sohaib_task/utils/icon_container.dart';
import 'package:sohaib_task/view/login_screen.dart';
import 'package:sohaib_task/view/signup_screen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
       body: Stack(
         children: [
           Container(
             width:size.width*1,
             height: size.height*1,
      ),
      Positioned(
        top: 0,
        child: Container(
          width: size.width*1,
          height: size.height*0.7,
         decoration:  const  BoxDecoration(
          image:  DecorationImage(
            image:  ExactAssetImage('images/pic5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        
        ),
      ),
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width*1,
            height: size.height*0.3,
            decoration:const  BoxDecoration(
                   boxShadow: [
                  BoxShadow(color: Colors.white,
                  blurRadius: 50,
                  spreadRadius: 50.0
                  ),
                ]
                ),
                child: Column(
                  children: [
                    CustomizeButton(title: "Sign Up",
                     buttoncolor: Colors.blue,
                      textcolor: Colors.white,
                       bordercolor: Colors.white,
                       onpress: (){
                         Get.to(SignUpScreen());
                       },),
                       SizedBox(height: size.height*0.05,),
                        CustomizeButton(title: "Log In",
                     buttoncolor: Colors.blue,
                      textcolor: Colors.white,
                       bordercolor: Colors.white,
                       onpress: (){
                         Get.to(LoginScreen());
                       },),
                  ],
                ),
          ),
          ),
         ],
       ),

      ),
    );
  }
}