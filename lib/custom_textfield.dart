import 'package:e_com_application/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customTextField({String? title,String ? hint,controller})
{

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20,width: double.infinity,),
      Text(title!,style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 15)),


      TextFormField(
        decoration: InputDecoration(

          hintStyle: TextStyle(
            color: Colors.grey

          ),
          hintText:hint,
          isDense:true,
          fillColor: Colors.black12,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.white))

        ),
      )

    ],


  ).box.rounded.make();
}