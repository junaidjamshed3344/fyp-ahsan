import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohaib_task/utils/customize_button.dart';
import 'package:sohaib_task/utils/customize_emailtext_field.dart';
import 'package:sohaib_task/utils/customize_password_field.dart';
import 'package:sohaib_task/utils/functions.dart';
import 'package:sohaib_task/utils/icon_container.dart';
import 'package:sohaib_task/view/home_page.dart';
import 'package:sohaib_task/view/signup_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                          padding:  EdgeInsets.only(left: size.width*0.015),
                          child: const Text('Enter your email and password to login'),
                        ),
                        SizedBox(height: size.height*0.025,),
                        
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
                    padding:  EdgeInsets.only(left: size.width*0.2,top: size.height*0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        CustomizeButton(
                      title: 'Log In',
                      buttoncolor: Colors.blue,
                      bordercolor: Colors.white,
                      textcolor: Colors.white,
                      onpress: () async{

                       if (!_forkey.currentState!.validate()) {
                      return;
                    }
                    if (passwordController.text.length > 5){
                      String signInStatus = await Functions.signIn(context,
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                      Functions.showSnackBar(signInStatus, context);
                       if (signInStatus == 'signInSuccessful') {
                        passwordController.clear();
                        emailController.clear();
                        Get.to(HomePage());
                      } else {
                        Functions.showSnackBar(
                            'Please Enter Valid Information', context);
                      }

                    }
                    else {
                      Functions.showSnackBar(
                          'Please Enter Details for Login', context);
                    }
                    },),
                      SizedBox(height: size.height*0.04,),
                     
        
                      Padding(
                        padding:  EdgeInsets.only(left: size.width*0.055),
                        child: Row(
                          children: [
                            const Text('Do not have an Account ? ',style: TextStyle(
                              fontSize: 12,
                            ),),
                            GestureDetector(
                              onTap: (){
                                Get.to(SignUpScreen());
                              },
                              child: const Text('Sign Up',style: TextStyle(
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