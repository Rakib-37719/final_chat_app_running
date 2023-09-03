import 'package:flutter/material.dart';
import 'package:chat_app_office/screens/login_screen.dart';
import 'package:chat_app_office/screens/welcome_screen.dart';
class RoundedButton extends StatelessWidget {

  RoundedButton({this.colour, required this.title, required this.onPressed}); /// omitting 'required' brings error

  final Color? colour;
  final String title;  /// adding ? mark to make 'title' nullable creates error in the text widget
  //final Function onPressed;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}