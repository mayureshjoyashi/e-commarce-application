import 'package:flutter/cupertino.dart';

Widget main_logo()
{
  return  Container(height: 100,
    width: 100,
    decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage('assets/images/img2.jpg'),
        fit: BoxFit.cover)),);
}