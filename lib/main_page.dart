import 'package:e_com_application/login_page.dart';
import 'package:e_com_application/logo/main_logo.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {

 fun()
  {
    Future.delayed(const Duration(seconds: 3),()=>{
      Get.to(() => const login_page()),
      Get.snackbar('message', 'Welcome to E commarce application')
    });


  }

//here the first function run
@override
void initState() {
 fun();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 350, width: double.infinity,),
          main_logo(),




        ],

      ),
    );
  }
}


