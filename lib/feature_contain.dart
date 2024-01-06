import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget contain2({onPress,String ? value,String ?path,String ? value1})
{
  return Container(
    height:200,
    padding: EdgeInsets.all(10),


    color: Colors.white,
    child:Column(


      children: [
        Image.asset(path!,width: 100,),
        Text(value1!,style: TextStyle(color: Colors.black),),
        TextButton(onPressed: onPress, child: Text(value!,style: TextStyle(color: Colors.redAccent),)),

      ],
    ),
  ).box.margin(EdgeInsets.symmetric(horizontal: 4)).white.make();
}