import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sohaib_task/utils/customize_button.dart';
import 'package:sohaib_task/view/login_screen.dart';

class Setting extends StatefulWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var Get;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: CustomizeButton(title: 'Logout',
        buttoncolor: Colors.blue,
        textcolor: Colors.white,
        bordercolor: Colors.white,
        onpress: (){
          FirebaseAuth.instance.signOut();
          Get.of(LoginScreen());
        },),
      ),
    ),);
  }
}