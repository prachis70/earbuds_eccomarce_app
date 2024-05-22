import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 80),
            child: InkWell(
              onTap: () {
               Navigator.of(context).pushNamed('/ca');
              },
              child: Container(
                alignment: Alignment.center,
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.white, blurRadius: 5, spreadRadius: 3)
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/img2.jpeg'),
                    fit: BoxFit.cover,
              
                  ),
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            height: 350,
            width: 350,
            color: Colors.black26,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
             child: Center(
                 child: Text('...Earbuds...',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
