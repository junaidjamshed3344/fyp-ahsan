import 'package:flutter/material.dart';

class CustomizeEmailTextFormField extends StatefulWidget {

  late TextEditingController controlerr;
  late String textfieldhint;
  CustomizeEmailTextFormField({required this.controlerr, required this.textfieldhint});

  @override
  _CustomizeEmailTextFormFieldState createState() => _CustomizeEmailTextFormFieldState();
}

class _CustomizeEmailTextFormFieldState extends State<CustomizeEmailTextFormField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width*0.001),
      child: TextFormField(
        controller: widget.controlerr,
        style: const TextStyle(
          color: Colors.black
        ),
        decoration: InputDecoration(
    hintText: widget.textfieldhint,
    filled: true,
      fillColor: Color(0xFFE7EBEE),
    hintStyle: const TextStyle(
      color: Colors.black
    ),
  
    contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
    border: const  OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16.0),
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide:
      BorderSide(color: Colors.white, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide:
      BorderSide(color: Colors.white, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  ),
        validator: (value) {
          if (value!.isNotEmpty)
          {
            return null;
          }
          else
          {
            return 'Please Enter Detail';
          }
        },
      ),
    );
  }
}
