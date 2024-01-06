import 'package:e_com_application/custom_textfield.dart';
import 'package:e_com_application/first_page.dart';
import 'package:e_com_application/pages/pages.dart';
import 'package:e_com_application/sinup_page.dart';
import 'package:e_com_application/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'button.dart';
import 'logo/main_logo.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {

    return bgWidget(child: Scaffold(
backgroundColor: Colors.redAccent,
      resizeToAvoidBottomInset: false,
      body:Center(

        child: Column(



          children: [
            SizedBox(height: 80,width: double.infinity,),
           //main application logo function
           main_logo(),
           SizedBox(height: 10,width: double.infinity,),

           //container contains all functionality required for login(email,password,buttons)
           Container(height: 390,width: 300,color: Colors.white,padding:EdgeInsets.all(20),child:  Padding(padding: EdgeInsets.all(30),child:
           Column(


             children: [
               customTextField(title:email,hint:emailHint),
               customTextField(title:password,hint:passwordHint),
               Align(
                 alignment: Alignment.centerRight,
                 child: Text(forgot_password,style: TextStyle(fontSize: 8,color: Colors.blue),),
               ),
               SizedBox(height:10,width:double.infinity),
               buttons(value: 'Log In',onPress: (){Get.to(first_page()); Get.snackbar('message', 'Succsesfully Log in'); }),
               Align(
                 alignment: Alignment.center,
                 child: Text(or_create,style: TextStyle(fontSize: 8,color: Colors.black),),
               ),
               buttons(value: 'Sign Up',onPress: (){Get.to(sineup_page());}),
             ],
           )
           ),),


          ],
        ),
      )
    ));

  }
}
