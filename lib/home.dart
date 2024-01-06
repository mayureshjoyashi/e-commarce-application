import 'package:e_com_application/deal.dart';
import 'package:e_com_application/feature_contain.dart';
import 'package:e_com_application/row_container.dart';
import 'package:e_com_application/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import 'container.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  var list2=[
        'assets/images/slider1.png',
        'assets/images/slider2.jpg',
        'assets/images/ic19.jpg',
        'assets/images/slider4.png',
        'assets/images/slider17.jpg'
  ];

  var list3=[
    'assets/images/slider10.png',
    'assets/images/slider13.png',
    'assets/images/slider8.png',
    'assets/images/ic18.jpg',
    'assets/images/slider16.png'
  ];

  var listname=['RS.4999','RS.29999','RS.58999','RS.186999','Rs.299'];
  var listpath=['assets/images/fs5.jpg','assets/images/fs4.jpg','assets/images/fs6.jpg','assets/images/fs2.jpg','assets/images/fs7.jpg'];
  var listname1=['Home Theater','Smart TV','Laptop','Iphone', 'Hand Watch'];

  var featurename=[girl,mobile,boy,tshirt,women,girldress];
  var featurepath=['assets/images/f6.jpg','assets/images/f2.jpg','assets/images/f3.jpg','assets/images/f4.jpg','assets/images/f5.jpg','assets/images/f1.jpg'];

  @override
  Widget build(BuildContext context) {
    var box;
    return Scaffold(

      body: SafeArea(child:SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,

          children: [

            Padding(padding: EdgeInsets.all(10),child:  Container(
              decoration: BoxDecoration(color: Colors.white),
              height: 45,
              width: 400,
              padding: EdgeInsets.only(left: 20,right:10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: search,
                  suffixIcon: IconButton(onPressed:()=>{Get.to(null)}, icon: Image.asset('assets/images/ic7.png',width: 26,)),
                  fillColor: Colors.white,
                  border: InputBorder.none,

                  hintStyle: TextStyle(
                      color: Colors.grey

                  ),



                ),
              ),
            ),),
            VxSwiper.builder(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 100/9,
                height: 150,
                itemCount: list2.length, itemBuilder:(context,index){
              return Image.asset(list2[index],fit: BoxFit.fill,).box.clip(Clip.antiAlias).make();

            }),
            SizedBox(height: 20,width: 300,),
            Row(

              children: [
                SizedBox(width: 25,),
                contain(value: deal1,path:'assets/images/ic10.png',onPress: (){Get.to(deal());},height:context.screenHeight*0.13,width:context.screenWidth/2.5),
                SizedBox(width: 10),
                contain(value: flash_sale,path:'assets/images/ic11.png',onPress: (){Get.to(deal());},height:context.screenHeight*0.13,width:context.screenWidth/2.5),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 20,width: 300,),
            VxSwiper.builder(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 100/9,
                height: 150,
                itemCount: list2.length, itemBuilder:(context,index){
              return Image.asset(list3[index],fit: BoxFit.fill,).box.clip(Clip.antiAlias).make();

            }),
            SizedBox(height: 20,width: 300,),
            Row(

              children: [
                SizedBox(width: 10,),
                contain(value: Top_category,path:'assets/images/ic3.png',onPress: (){Get.to(deal());},height:context.screenHeight*0.12,width:context.screenWidth/3.4),
                SizedBox(width: 10),
                contain(value: brand,path:'assets/images/ic12.png',onPress: (){Get.to(deal());},height:context.screenHeight*0.12,width:context.screenWidth/3.4),
                SizedBox(width: 10,),
                contain(value: top_sellers,path:'assets/images/ic13.png',onPress: (){Get.to(deal());},height:context.screenHeight*0.12,width:context.screenWidth/3.4),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 20,width: 300,),
            Padding(padding: EdgeInsets.only(left: 15),
              child: Align(alignment: Alignment.centerLeft,child:  Text(feature_category,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),) ,),
            SizedBox(height: 10,width: 300,),
            SingleChildScrollView(
          scrollDirection:Axis.horizontal,
         child :Row
           (
            children:List.generate(featurename.length, (index) => contain1(value: featurename[index],path:featurepath[index],onPress: (){Get.to(null);})),



          )
        ),
            SizedBox(height: 10,width: 300,),
            Container(
              width:double.infinity,
              height:300,
              color: Colors.redAccent,
              padding:EdgeInsets.all(20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection:Axis.horizontal,
                    child: Row(
                      children:List.generate(listname.length, (index) => contain2(value:listname[index],path:listpath[index],onPress: (){Get.to(null);},value1: listname1[index])),


                    ),
                  )

                ],

            ),
            ),
            SizedBox(height: 10,width: 300,),
            VxSwiper.builder(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 100/9,
                height: 150,
                itemCount: list2.length, itemBuilder:(context,index){
              return Image.asset(list3[index],fit: BoxFit.fill,).box.clip(Clip.antiAlias).make();

            }),
            SizedBox(height: 10,width: 300,),


          ],
        ),
      )
      ),
    );
  }
}
