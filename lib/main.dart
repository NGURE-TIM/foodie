import 'package:flutter/material.dart';
import 'homepage.dart';
void main() => runApp( foodie());

class foodie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}
