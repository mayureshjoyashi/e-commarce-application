import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget contain3({onPress,String ? value,String ?value1})
{
  return Container(
    padding: EdgeInsets.all(1),

    height:80,
    width:100,
    color: Colors.white,
    child:Column(


      children: [

        TextButton(onPressed: onPress, child: Text(value!,style: TextStyle(color: Colors.grey,),)).box.size(70, 30).make(),
        TextButton(onPressed: onPress, child: Text(value1!,style: TextStyle(color: Colors.grey),)).box.size(70, 30).make(),
      ],
    ),
  ).box.rounded.margin(EdgeInsets.only(right: 10)).make();
}