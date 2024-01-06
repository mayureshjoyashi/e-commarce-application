import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttons({String ?value,controller, required Null Function() onPress})
{
  return Padding(padding: EdgeInsets.only(top: 5,bottom: 5),child: SizedBox(
    height: 40,
    width: 270,
    child: ElevatedButton(onPressed: onPress,style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.redAccent)) , child: Text(value!) ),
  ),);
}