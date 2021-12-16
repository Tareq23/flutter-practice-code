

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: AppBar(
        title: Text(
          'Flutter Route',
        style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,),
        ),
        centerTitle: true,
      ),
    );
  }
}