import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF030C5D),
        body: Padding(
          padding:  EdgeInsets.only(top: size.height*0.35, left: size.width*0.35 ),
          child: Column(
            children:[
              Container(
                width: size.width*0.3,
                height: size.height*0.12,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white
                ),
                child: const Center(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 60.0,
                    color: Colors.orange,
                    ),
                ),
              ),
              SizedBox(
                height: size.height*0.03,
              ),
             const Text(
              'SMS',
             style: TextStyle(
               color: Colors.white,
               fontSize: 20.0,
             ),
             ),
            ],
            ),
        ),
      ),
    );
  }
}