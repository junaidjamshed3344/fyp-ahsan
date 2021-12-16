import 'package:flutter/material.dart';
class IconContainer extends StatefulWidget {
  const IconContainer({ Key? key }) : super(key: key);

  @override
  _IconContainerState createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
               width: size.width*0.42,
                height: size.height*0.18,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Colors.white
                ),
                child: const Center(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 80.0,
                    color: Colors.orange,
                    ),
                ),
            );
  }
}