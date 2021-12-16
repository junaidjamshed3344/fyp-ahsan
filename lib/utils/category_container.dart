import 'package:flutter/material.dart';
class CategoryContainer extends StatefulWidget {
  String title;
  IconData icon;
  CategoryContainer({required this.title,required this.icon});

  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height*0.1,
          width: size.width*0.2,
          decoration: BoxDecoration( 
            shape: BoxShape.circle,
            color: widget.title == 'Phones' ? Colors.orange : Colors.white 
          ),
          child: Center(
            child: Icon(widget.icon,
            size: 40.0,
            color: widget.title == 'Phones' ? Colors.white : Colors.black,),
          ),
        ),
        SizedBox(
          height: size.height*0.01,
        ),
        Text(widget.title,
        style: TextStyle(
          color: widget.title == 'Phones' ? Colors.orange : Colors.black
        ),
        ),
      ],
    );
  }
}