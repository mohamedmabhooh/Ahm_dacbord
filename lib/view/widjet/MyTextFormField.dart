
import 'package:flutter/material.dart';


class MyTextFormField extends StatefulWidget {


  late  bool isPassword;
  final bool isEmail;
  final String hintText;
  final IconData  PrefexIecon ;
  final int index;
  late IconData suffixIcons = Icons.visibility_off ;

  MyTextFormField({
 required this.hintText ,
    required this.PrefexIecon,
    this.index=0,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: Colors.transparent, width: 1),
          ),

          hintText: widget.hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          prefixIcon: Icon(widget.PrefexIecon,
              color:Colors.black),

          suffixIcon:widget.isEmail ?null:  InkWell(
            onTap: (){
              if(widget.isPassword == true){
                setState(() {
                  widget.isPassword =false;
                  widget.suffixIcons = Icons.visibility;
                });
              }else{
                setState(() {
                  widget.isPassword =true;
                  widget.suffixIcons = Icons.visibility_off;
                });
              }
            },
            child: Icon(widget.suffixIcons,
                color:Color(0xff828282)),
          ),
          fillColor: Colors.grey[200],
        ),
        obscureText: widget.isPassword ? true : false,

        keyboardType: widget.isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}