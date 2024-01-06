import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget contain1({onPress,String ? value,String ?path})
{
  return  Row(


      children: [
        Image.asset(path!,width: 26,),
        TextButton(onPressed: onPress, child: Text(value!,style: TextStyle(color: Colors.redAccent),)),

      ],
    ).box.margin(EdgeInsets.symmetric(horizontal: 4)).white.make();
}