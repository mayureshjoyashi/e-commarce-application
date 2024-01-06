import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget contain({onPress,String ? value,String ?path,height,width})
{
  return Container(
      padding: EdgeInsets.all(10),

    height:height,
    width:width,
    color: Colors.white,
    child:Column(


      children: [
       Image.asset(path!,width: 26,),
      TextButton(onPressed: onPress, child: Text(value!,style: TextStyle(color: Colors.redAccent),)),

      ],
    ),
  );
}