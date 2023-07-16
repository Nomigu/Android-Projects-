import 'package:flutter/material.dart';
class BaarahTextField extends StatelessWidget {
  final String? hintText;
  final Widget? ImageIcon;
  var suffix;

  BaarahTextField({
    this.suffix,this.hintText, this.ImageIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      child: TextFormField(

        decoration: InputDecoration(

          contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical:6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
            ),
          ),
          suffixIcon:ImageIcon??suffix,
          hintText: hintText ?? "Enter hint text here",
          hintStyle: TextStyle(fontSize: 14),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xff5B606D).withOpacity(0.2),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xff5B606D).withOpacity(0.2),
            ),
          ),
        ),
      ),
    );
  }
}
