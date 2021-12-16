import 'package:flutter/material.dart';
class CustomizePasswordField extends StatefulWidget {

  late TextEditingController controllerr;
  CustomizePasswordField({required this.controllerr});

  @override
  _CustomizePasswordFieldState createState() => _CustomizePasswordFieldState();
}

class _CustomizePasswordFieldState extends State<CustomizePasswordField> {
late bool hidepasssword;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    hidepasssword = true;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      child: TextFormField(
        controller: widget.controllerr,
        style: const TextStyle(
          color: Colors.black
        ),
        decoration: const  InputDecoration(
      hintText: 'Password',

      

      filled: true,
      fillColor: Color(0xFFE7EBEE),
       hintStyle:  TextStyle(
      color: Colors.black
        ),
      contentPadding:
      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: Colors.white, width: 0.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: Colors.white, width: 0.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      ),
        validator: (value) {
          if (value!.length>5)
          {
            return null;
          }
          else
          {
            return 'Password Length Should be Greater than 5';
          }
        },
      ),
    );
  }
}
