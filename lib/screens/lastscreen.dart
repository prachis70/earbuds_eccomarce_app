import 'package:earbuds_eccomarce_app/GOLBAL/product.dart';
import 'package:flutter/material.dart';

class lastpage extends StatefulWidget {
  const lastpage({super.key});

  @override
  State<lastpage> createState() => _lastpageState();
}

class _lastpageState extends State<lastpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,

        leading: IconButton(
          onPressed: (){
            qty=0;
            amount=0;
            total=0;
            Navigator.of(context).pop();
          },
          icon:Icon(Icons.add_shopping_cart,size: 20,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Center(
          child: Column(
                children: [
                Text('TOTAL PRODUCT: $qty'),
                Text('TOTAL AMOUNT:  $amount'),
                Text('TOTAL GST: 12%'),
                Text('TOTAL : $total'),
              ],
              ),
        ),
      ),
    );
  }
}
