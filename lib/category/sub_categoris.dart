import 'package:e_com_application/category/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../strings.dart';

class sub_cat extends StatelessWidget {
    final String ?value;
 sub_cat({Key? key,required this.value}) : super(key: key);

    var catname=['hometheater',
      'hometheater',
      'hometheater',
      'hometheater',
      'hometheater',
      'hometheater',
      'hometheater',
      'hometheater',
      'hometheater',];

    var catimg=['assets/images/fs5.jpg',
      'assets/images/fs5.jpg',
      'assets/images/fs5.jpg',
      'assets/images/fs5.jpg',
      'assets/images/fs5.jpg',
      'assets/images/fs5.jpg',
      'assets/images/fs5.jpg',
      'assets/images/fs5.jpg',
      'assets/images/fs5.jpg',

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(value!,style:TextStyle(color: Colors.white)),backgroundColor: Colors.redAccent,),
      body : Center(
        child:
         Column(
            children: [
              SizedBox(height: 20,width: 300,),
              SingleChildScrollView(
          scrollDirection: Axis.horizontal, child:Row(
                  children: List.generate(9, (index) => Text(catname[index],style: TextStyle(color:Colors.white)).box.size(100,50).rounded.margin(EdgeInsets.only(right: 10)).alignCenter.red500.make())
                ),),
              SizedBox(height: 20,width: 300,),
              Expanded(child:  GridView.builder(itemCount: catname.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 5)
                  , itemBuilder: (context,index)
                  {


                    return Column(
                      children: [
                        Image.asset(catimg[index],width:100,fit: BoxFit.cover,),
                        Text(catname[index],style:TextStyle(color:Colors.black,))

                      ],
                    ).box.margin(EdgeInsets.all(2)).white.make().onTap(() {
                      Get.to(product1(value: catname[index]));
                    });
                  }),

              ),

            ],
          ),

        ),
    );
  }
}
