import 'package:e_com_application/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import 'category/sub_categoris.dart';

class category1 extends StatefulWidget {
  const category1({Key? key}) : super(key: key);

  @override
  State<category1> createState() => _category1State();
}

class _category1State extends State<category1> {
  
 var catname=['Men Clothing',
   'Women Dress',
   'Cell Phone',
   'Kidtoys',
   'Laptops',
   'Jewellery',
   'CellPhone',
   'Furniture',
   'Sports',];
 var catimg=['assets/images/f4.jpg',
   'assets/images/f5.jpg',
   'assets/images/fs2.jpg',
   'assets/images/ca1.jpg',
   'assets/images/fs6.jpg',

   'assets/images/ca3.jpg',
   'assets/images/ca4.jpg',
   'assets/images/ca5.jpg',
   'assets/images/fs6.jpg',
   'assets/images/ca2.jpg',
 ];
 
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(backgroundColor: Colors.redAccent,
          title: Text(categories,style:TextStyle(color: Colors.white,backgroundColor: Colors.redAccent,fontWeight: FontWeight.bold)),
        ),
        body:Container(

          child: GridView.builder(itemCount: catname.length,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 5)
              , itemBuilder: (context,index)
          {
            
            return Column(
              children: [
                Image.asset(catimg[index],width:100,fit: BoxFit.cover,),
                Text(catname[index],style:TextStyle(color:Colors.black,))
                
              ],
            ).box.margin(EdgeInsets.all(2)).white.make().onTap(() {
              Get.to(sub_cat(value: catname[index],));
            });
          }),
        )
    );
  }
}
