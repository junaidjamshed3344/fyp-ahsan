import 'package:flutter/material.dart';
class CustomizeButton extends StatefulWidget {
  String title;
  Color buttoncolor;
  Color textcolor;
  final VoidCallback onpress;
  Color bordercolor;
  CustomizeButton({required this.title,
  required this.buttoncolor,
  required this.textcolor,
  required this.bordercolor,
  required this.onpress});

  @override
  _CustomizeButtonState createState() => _CustomizeButtonState();
}

class _CustomizeButtonState extends State<CustomizeButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onpress,
      child: Container(
        width: size.width*0.6,
        height: size.height*0.07,
        decoration: BoxDecoration(
          color: widget.buttoncolor,
          borderRadius: BorderRadius.circular(32.0),
          border: Border.all(color: widget.bordercolor)
        ),
        child: Center(
          child: Text(widget.title,style: TextStyle(
            color: widget.textcolor,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}