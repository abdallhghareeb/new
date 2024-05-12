import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List ids=[] ;
  int loveCheck = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 100.0),
        margin: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          children: [
            const Text("Love Check",style: TextStyle(
                color: Colors.purple,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),

            const Text("Tap on Petels to remove it"),
            const SizedBox(height: 50,),
            SizedBox(
              height: 350,
              child: Stack(
                alignment: Alignment.center,
                children: [
              
                  Stack(
                    children: [
                      Positioned(
                          top: 135,
                          left: 20,
                          child: Container(
                              child: oval(color: Colors.teal,x: 1.5, i: 1))),
                      Positioned(
                          top: 115,
                          child: Container(
                              child: oval(color: Colors.black,x: 1.15, i: 2))),
                      Positioned(
                          top: 85,
              
                          child: oval(color: Colors.green,x: 1.05, i: 3)),
                      Positioned(
                          top: 60,
                          child: oval(color: Colors.orange,x: -1.1, i: 4)),
                      Positioned(
                          top: 30,
                          left: 20,
                          child: oval(color: Colors.red,x: -1.5, i: 5)),
                      Positioned(
                          top: 150,
                          left: 60,
                          child: Container(
              
                              child: oval(color: Colors.purple,x: 1.99999, i: 6))),
                    ],
                  ),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 135,
                            left: 20,
                            child: Container(
                                child: oval(color: Colors.blueAccent,x: 1.5, i: 7))),
                        Positioned(
                            top: 115,
                            child: Container(
                                child: oval(color: Colors.black,x: 1.18, i: 8))),
                        Positioned(
                            top: 85,
              
                            child: oval(color: Colors.green,x: 1.05, i: 9)),
                        Positioned(
                            top: 60,
                            child: oval(color: Colors.orange,x: -1.1, i: 10)),
                        Positioned(
                            top: 30,
                            left: 20,
                            child: oval(color: Colors.red,x: -1.5, i: 11)),
                        Positioned(
                            top: 10,
                            left: 60,
                            child: Container(
              
                                child: oval(color: Colors.purple,x: 1.9999, i: 12))),
                      ],
                    ),
                  ),
                  const Positioned(top:90,child: CircleAvatar(backgroundColor: Colors.white,radius: 20,))
              
              
              
              
                ],
              ),
            ),
            Text(loveCheck % 2 == 0 ? "Love":"Doesn't Love ",style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black
              ),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    ids=[];
                    loveCheck =0;
                  });
                },
                child: const Text("restart ",style: TextStyle(
                    fontSize: 15,color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget oval({required Color color,required double x,required int i}){
    if(ids.contains(i)){
      return const SizedBox();
    }else{

      return GestureDetector(
        onTap: (){
          setState(() {
            ids.add(i);
            loveCheck=loveCheck+1;
          });

        },
        child: Transform.rotate(
          angle: math.pi / x,
          child: Align(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              height: 50,
              width: 130,
              decoration:   BoxDecoration(
                color: color,
                borderRadius:  const BorderRadius.all(Radius.elliptical(100, 40)),
              ),

            ),
          ),
        ),
      );

    }
  }
}
