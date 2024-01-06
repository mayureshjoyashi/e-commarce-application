import 'package:e_com_application/profile.dart';
import 'package:e_com_application/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'cart.dart';
import 'category.dart';
import 'controller.dart';
import 'home.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {

//Get put used to access the all libraries from inherited child function

var controller= Get.put(HomeController());

  var list1=[
    BottomNavigationBarItem(icon: Image.asset('assets/images/ic2.png',width: 26),label: home),
    BottomNavigationBarItem(icon: Image.asset('assets/images/ic5.png',width: 30,),label: cart),
    BottomNavigationBarItem(icon: Image.asset('assets/images/ic3.png',width: 26),label: categories),
    BottomNavigationBarItem(icon: Image.asset('assets/images/ic4.png',width: 26),label: profile),
  ];

  var map=[
    home1(),
    cart1(),
    category1(),
    profile1(),
  ];


  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //exapnds use the remaining space of column or row
          //Obx stores the variable value
          Obx(() => Expanded(child:  map.elementAt(controller.currentIndex.value)),)
        ],
      ),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        //item contaions from which list we took all icons
        items: list1,
        //type: BottomNavigationBarType.fixed,
        backgroundColor:Colors.white,

        selectedItemColor: Colors.red,
        //whatever we clicked that container will display its functions
        onTap: (value)
        {
          controller.currentIndex.value=value;
        },
      ),



      )
    );
  }
}
