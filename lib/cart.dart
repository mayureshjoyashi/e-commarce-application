import 'package:flutter/material.dart';

class cart1 extends StatefulWidget {
  const cart1({Key? key}) : super(key: key);

  @override
  State<cart1> createState() => _cart1State();
}

class _cart1State extends State<cart1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child:Text('Cart is Empty')
    )
    );
  }
}
