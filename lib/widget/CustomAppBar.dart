import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Return Data from another Screens"),
      centerTitle: true,
    );
  }
}