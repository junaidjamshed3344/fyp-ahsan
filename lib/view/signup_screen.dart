import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohaib_task/utils/customize_button.dart';
import 'package:sohaib_task/utils/customize_emailtext_field.dart';
import 'package:sohaib_task/utils/customize_password_field.dart';
import 'package:sohaib_task/utils/functions.dart';
import 'package:sohaib_task/utils/icon_container.dart';
import 'package:sohaib_task/view/home_page.dart';
import 'package:sohaib_task/view/login_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  final GlobalKey<FormState> _forkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _forkey,
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(top: size.height*0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Padding(
                    padding:  EdgeInsets.only(left: size.width*0.3,top: size.height*0.08),
                    child: const IconContainer(),
                  ),
                  SizedBox(height: size.height*0.03,),
                  Padding(
                    padding:  EdgeInsets.only(left: size.width*0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Padding(
                          padding:  EdgeInsets.only(left: size.width*0.01),
                          child: const Text('Enter your email and password to register'),
                        ),
                        SizedBox(height: size.height*0.025,),
                        Padding(
                          padding:  EdgeInsets.only(right: size.width*0.1),
                          child: CustomizeEmailTextFormField(textfieldhint: 'Username',
                          controlerr: usernameController,),
                        ),
                        SizedBox(height: size.height*0.01,),
                        Padding(
                           padding:  EdgeInsets.only(right: size.width*0.1),
                          child: CustomizeEmailTextFormField(textfieldhint: 'Email',
                          controlerr: emailController,),
                        ),
                        SizedBox(height: size.height*0.01,),
                        Padding(
                         padding:  EdgeInsets.only(right: size.width*0.1),
                          child: CustomizePasswordField(controllerr: passwordController,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: size.width*0.05,top: size.width*0.03),
                    child: Row(
                      children: const [
                        Text('By Signing up you must accept ',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                        ),
                        Text('Terms of Service and Privacy Policy',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.blue,
                        ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: size.width*0.2,top: size.height*0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        CustomizeButton(
                      title: 'Sign Up',
                      buttoncolor: Colors.blue,
                      bordercolor: Colors.white,
                      textcolor: Colors.white,
                      onpress: ()async{
                        if (!_forkey.currentState!.validate()) 
                        {
                         return;
                        }
                        if(passwordController.text.length < 6){
                          Functions.showSnackBar(
                            'Password length should be greater than 5 ', context);
                        }
                        else{
        
                          String registrationStatus = await Functions.signUp(context,
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                            username: usernameController.text.trim());
                            var firebaseUser = FirebaseAuth.instance.currentUser;
                            if(registrationStatus == 'Verify')
                            {
                              
                          FirebaseFirestore.instance
                              .collection('users')
                              .doc(firebaseUser!.uid)
                              .set({
                            'name': usernameController.text.trim(),
                            'email': emailController.text.trim(),
                            'userid': firebaseUser.uid,
                          });
                          usernameController.clear();
                          passwordController.clear();
                          emailController.clear();
                          Get.to(HomePage());
                            }
                             else {
                          Functions.showSnackBar(registrationStatus, context);
                        }
                        }
                      },),
                      SizedBox(height: size.height*0.04,),
                     
        
                      Padding(
                        padding:  EdgeInsets.only(left: size.width*0.055),
                        child: Row(
                          children: [
                            const Text('Already have an Account ? ',style: TextStyle(
                              fontSize: 12,
                            ),),
                            GestureDetector(
                              onTap: (){
                                Get.to(LoginScreen());
                              },
                              child: const Text('Login',style: TextStyle(
                                color:Colors.blue,
                                fontSize: 12,
                              ),),
                            )
                          ],
                        ),
                      ),
                      
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
        
    ),
    );
  }
}