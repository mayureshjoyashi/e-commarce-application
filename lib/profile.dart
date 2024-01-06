import 'package:e_com_application/profile/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import 'button.dart';
import 'login_page.dart';

class profile1 extends StatefulWidget {
  const profile1({Key? key}) : super(key: key);

  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  var list5=['MyOrder','MyWishlist','Message'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: Column(
         children: [
           Container(
             padding: EdgeInsets.only(left: 20,right: 9,top:10),
             width: double.infinity,
             height:290,
             color: Colors.redAccent,
             child:
             Column(
               children: [
                 SizedBox(height: 100,),
                 Row(
                   children: [

                     CircleAvatar(backgroundColor: Colors.white,),
                     SizedBox(width: 10,),
                     Text('Mayuresh Joyashi',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                     SizedBox(width: 80,),
                     ElevatedButton(onPressed: (){Get.to(login_page());},style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),child:  Text('Log Out',style: TextStyle(color: Colors.white),),)

                   ],
                 ),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     contain3(onPress: (){},value: '00',value1: 'Cart'),
                     contain3(onPress: (){},value: '00',value1: 'WishList'),
                     contain3(onPress: (){},value: '00',value1: 'Order'),
                   ],
                 )
               ],
             ),
           ),
           Container(width: double.infinity,
               height:290,

             child: ListView.separated(
               itemBuilder: (BuildContext context, int index) { return ListTile(title: Text(list5[index]),); },
               separatorBuilder: (BuildContext context, int index) {return const Divider(color: Colors.grey,); },
               itemCount: list5.length,

    ).box.rounded.make().onTap(() { }),

           )
         ],

       ),
    );
  }
}
