import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({ Key? key }) : super(key: key);

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width*0.05),
          child: Container(
      width: size.width*0.9,
      height: size.height*0.3,
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset('images/s2.jpg',
        fit: BoxFit.fill,),
        )
    ),
        ),
    Positioned(
       left: size.width*0.08,
       bottom: size.height*0.05,
      child: Container(
        width: size.width*0.25,
        height: size.height*0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        child: const Center(
          child: Text('Buy Now!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
          ),
          ),
    ),
    ),
    Positioned(
       left: size.width*0.1,
       top: size.height*0.02,
      child: Container(
        width: size.width*0.11,
        height: size.height*0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.red,
        ),
        child: const Center(
          child: Text('New',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
            color: Colors.white,
          ),
          ),
          ),
    ),
    ),
     Positioned(
       left: size.width*0.1,
       top: size.height*0.1,
      child: Container(
        width: size.width*0.3,
        height: size.height*0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
         // color: Colors.red,
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
           const  Text('Galaxy M21',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.white,
        ),
        ),
        SizedBox(height: size.height*0.01,),
        const Text('Super,Mega,Rapid',
        style: TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize: 10.0,
          color: Colors.white,
        ),
        ),

          ],
        )
    ),
    ),
      ],
    );
  }
}