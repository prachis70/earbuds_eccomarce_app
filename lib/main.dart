import 'package:earbuds_eccomarce_app/screens/cart.dart';
import 'package:earbuds_eccomarce_app/screens/categourypage.dart';
import 'package:earbuds_eccomarce_app/screens/details.dart';
import 'package:earbuds_eccomarce_app/screens/homescreen.dart';
import 'package:earbuds_eccomarce_app/screens/lastscreen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(earbudsApp());
}
class earbudsApp extends StatelessWidget {
  const earbudsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/':(context) => homepage(),
       '/ca':(context) =>cate(),
       '/details':(context)=>details(),
       '/cart':(context)=>cartpage(),
       '/last':(context) => lastpage(),
     },
    );
  }
}
