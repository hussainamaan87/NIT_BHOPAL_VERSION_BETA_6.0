import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  Button1({required this.text, required this.color, required this.onPressed});

  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
      ),
      child: MaterialButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}
