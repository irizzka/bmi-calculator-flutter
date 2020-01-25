import 'package:flutter/material.dart';

class RawIconButton extends StatelessWidget {

  RawIconButton({this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey,
    );
  }
}