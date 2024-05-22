import 'package:flutter/material.dart';
import '../GOLBAL/product.dart';

class cate extends StatefulWidget {
  const cate({super.key});

  @override
  State<cate> createState() => _cateState();
}

class _cateState extends State<cate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 4,
        title: Text(
          'Detailspage',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            (Icons.notifications_active_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color:Colors.grey, blurRadius: 2, spreadRadius: 2,
                    offset: Offset(0,2))
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'search your Earbuds',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Wrap(
                    children: [
                      Column(
                        children: List.generate(
                            pr.length,
                                (index) =>
                                GestureDetector(
                                    onTap: () {
                                      SelectIndex = index;
                                      Navigator.of(context).pushNamed('/details');
                                    },
                                    child: box1(img: pr[index]['img']))),
                      ),
                      Column(
                        children: List.generate(
                            pr.length,
                                (index) =>
                                GestureDetector(
                                    onTap: () {
                                      SelectIndex = index;
                                      Navigator.of(context).pushNamed('/home');
                                    },
                                    child: box1(img: pr[index]['img']))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding box1({required String img}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 5))
            ],
            borderRadius: (BorderRadius.circular(25)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            )),
      ),
    );
  }
}
