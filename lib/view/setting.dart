import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohaib_task/utils/customize_button.dart';
import 'package:sohaib_task/view/login_screen.dart';

class Setting extends StatefulWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
 


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: size.width*0.2,top: size.width*0.2),
        child: Container(
          child: CustomizeButton(title: 'Logout',
          buttoncolor: Colors.blue,
          textcolor: Colors.white,
          bordercolor: Colors.white,
          onpress: (){
            FirebaseAuth.instance.signOut();
           Get.offAll(LoginScreen());
          },),
        ),
      ),
    ),);
  }
}