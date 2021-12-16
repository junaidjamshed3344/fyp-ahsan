import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BestSellerContainer extends StatefulWidget {
  String name;
  String price;
  BestSellerContainer({required this.name,required this.price});

  @override
  _BestSellerContainerState createState() => _BestSellerContainerState();
}

class _BestSellerContainerState extends State<BestSellerContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(left: size.width*0.05,top: size.width*0.05),
      child: Stack(
        children: [
          Container(
            width: size.width*0.42,
            height: size.height*0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white
            ),
            child: ClipRRect(
             // borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(widget.name,
              height: size.height*0.2,
              //fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            right: size.width*0.001,
            top: size.height*0.02,
            child: SvgPicture.asset("images/20951337511543238895.svg",color: Colors.red),
            ),
            Positioned(
            left: size.width*0.03,
            bottom: size.height*0.015,
            child: Text(widget.price + ' pkr',style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
            ),
            ),
        ],
      ),
    );
  }
}