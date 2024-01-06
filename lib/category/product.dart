import 'package:e_com_application/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../button.dart';

class product1 extends StatelessWidget {

 final  String ?value;
 product1({Key? key,required this.value}) : super(key: key);
  var list2=[
    'assets/images/ic19.jpg',
    'assets/images/ic19.jpg',
    'assets/images/ic19.jpg',
    'assets/images/ic19.jpg',
    'assets/images/ic19.jpg',
  ];

  var list4 =['Video','Reviews','Seller Policy','Return Policy','Support Policy','Product you may like also'];


 

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
            backgroundColor: Colors.white,
          title: Text('Dummy Product',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          actions: [
            IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s1.png',width: 20,)),
            IconButton(onPressed: (){ Get.to(null);}, icon:Image.asset('assets/images/s2.png',width:20))
          ],
        ),
        body:Column(
          children: [
            Expanded(child: Padding(padding: EdgeInsets.all(10),child: SingleChildScrollView(
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20,width: 300,),
                  VxSwiper.builder(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 100/9,
                      height: 200,
                      itemCount: list2.length, itemBuilder:(context,index) {
                    return Image
                        .asset(list2[index], fit: BoxFit.fill,)
                        .box
                        .clip(Clip.antiAlias)
                        .make();
                  }
                  ),
                  SizedBox(height: 20,width: 300,),
                  Text('HeadPhones',style: TextStyle(color: Colors.black,fontSize: 17),),
                  SizedBox(height: 5,width: 300,),
                  VxRating(onRatingUpdate:(value){},count:5,size:15,normalColor: Colors.grey,selectionColor: Colors.yellow,),
                  SizedBox(height: 5,width: 300,),
                  Text('RS.3999',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize:23)),
                  SizedBox(height: 10,width: 300,),

                  Column(
                    children: [
                      Row(

                        children: [

                          Text(' In house brands',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 180,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s6.png',width: 20,)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [
                          Text('colors:',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 100,),
                          CircleAvatar(backgroundColor: Colors.greenAccent,),
                          SizedBox(width: 5,),
                          CircleAvatar(backgroundColor: Colors.redAccent,),
                          SizedBox(width: 5,),
                          CircleAvatar(backgroundColor: Colors.blue,),

                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Quantity:',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 80,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s3.png',width: 20,)),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s5.png',width: 20,)),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s4.png',width: 20,)),

                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Total:',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 80,),
                          TextButton(onPressed: (){}, child:  Text('RS 0.00',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize:19)),)
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Description:',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 80,),
                            Text(feature,style: TextStyle(color: Colors.grey,fontSize:12)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Video',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 255,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s9.png',width: 20,)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Review',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 245,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s9.png',width: 20,)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Seller Policy',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 210,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s9.png',width: 20,)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Returend Policy',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 190,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s9.png',width: 20,)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Support Policy',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 195,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s9.png',width: 20,)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),
                      Row(
                        children: [

                          Text('Product may also you like',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize:14)),
                          SizedBox(width: 125,),
                          IconButton(onPressed: (){ Get.to(null);}, icon: Image.asset('assets/images/s9.png',width: 20,)),
                        ],
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).make(),


                    ],
                  )


                ],
              ),

            ),


              ),
            ),
            SizedBox(
              height: 110,
              child:
              Column(
                children: [
                  buttons(onPress: () {  },value: 'Add to Cart'),
                  buttons(onPress: () {  },value: 'Buy Now'),

                ],
              ),
            )
          ],
        )





          );

  }
}
