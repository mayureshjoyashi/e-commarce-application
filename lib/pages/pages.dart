
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bgWidget({ required Scaffold child})
{
  return Container(
    height: 100,
    width: double.infinity,
    decoration: const BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/img3.jpg'),fit: BoxFit.fill)),
      child:child
    ,

    
    
    
    
    
  );
}