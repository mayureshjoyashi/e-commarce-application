import 'package:e_com_application/login_page.dart';
import 'package:e_com_application/pages/pages.dart';
import 'package:e_com_application/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'button.dart';
import 'custom_textfield.dart';
import 'logo/main_logo.dart';

class sineup_page extends StatefulWidget {
  const sineup_page({Key? key}) : super(key: key);

  @override
  State<sineup_page> createState() => _sineup_pageState();
}

class _sineup_pageState extends State<sineup_page> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
        backgroundColor: Colors.redAccent,
        resizeToAvoidBottomInset: false,
        body:Center(

          child: Column(



            children: [
              SizedBox(height: 80,width: double.infinity,),
              main_logo(),
              SizedBox(height: 10,width: double.infinity,),
              Container(height: 520,width: 300,color: Colors.white,padding:EdgeInsets.all(20),child:  Padding(padding: EdgeInsets.all(30),child:
              Column(


                children: [
                  customTextField(title:name,hint:nameHint),
                  customTextField(title:email,hint:emailHint),
                  customTextField(title:password,hint:passwordHint),
                  customTextField(title:confirm,hint:passwordHint),
                  SizedBox(height: 10,width: double.infinity,),
                  buttons(value:'sign Up',onPress: (){Get.to(null);}),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(account,style: TextStyle(fontSize: 8,color: Colors.blue),),
                      ),
                     TextButton(onPressed: (){Get.to(login_page());}, child:Text(login,style: TextStyle(fontSize: 11,color: Colors.black),))
                    ],
                  )

                ],
              )
              ),),


            ],
          ),
        )
    ));

  }
}
