import 'package:flutter/material.dart';

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



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.9),
      extendBody: true,
      body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(

            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.arrow_back,
                            weight: 3,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        weight: 3,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20,),
                      Icon(
                        Icons.screen_share_outlined,
                        weight: 3,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20,),
                      Icon(
                        Icons.menu,
                        weight: 3,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(image: NetworkImage(
                        "https://scontent.fcai20-3.fna.fbcdn.net/v/t1.6435-9/32148546_1022520997912523_2089016868084908032_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE02lcvAR9Agq_O8gfdlk1CJcKBk9pzj_ElwoGT2nOP8ZGzKCTRtDoNNZMwwl2xzdMq9IROD5MTe1AxheVQ1gsa&_nc_ohc=0vDbEYHSaqMQ7kNvgEnBYvB&_nc_ht=scontent.fcai20-3.fna&oh=00_AfCTFxLI3ZCspmjxcLhziANH1-91txhHEOeubfBHBkI3pA&oe=665FDBDE"
                    ),),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7,horizontal: 10),
                      width: double.infinity,
                      color: Colors.blueAccent.withOpacity(0.9),
                      child: Text(
                        "Group by Egyptian Google Flutter Community",
                        style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        children: [
                          Text(
                            "FlutterEgypt",textAlign: TextAlign.start,style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(width: 5,),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              weight: 3,
                              size: 15,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Icon(
                            Icons.public,
                            weight: 3,
                            size: 20,
                            color: Colors.grey.shade500,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Public group  .",style: TextStyle(color: Colors.grey.shade500,
                            fontSize: 18,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "75K",style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "members",style: TextStyle(color: Colors.grey.shade500,
                            fontSize: 18,fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.groups),
                                    SizedBox(width: 10,),
                                    Text(
                                      "Joined",textAlign: TextAlign.start,style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    SizedBox(width: 10,),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person,color: Colors.white,),
                                    SizedBox(width: 10,),
                                    Text(
                                      "invite",textAlign: TextAlign.start,style: TextStyle(
                                        fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
                                    ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        height: 70,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(

                              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Text(
                                  "Joined",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.red,
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "You",textAlign: TextAlign.start,style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Text(
                                  "Chats",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Text(
                                  "Guides",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Text(
                                  "Feature",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 10,color: Colors.grey[300],),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child:  Row(
                    children: [
                      Text(
                        "Featured",textAlign: TextAlign.start,style: TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold,
                      ),

                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.error_outline_sharp,
                        weight: 3,
                        size: 20,
                        color: Colors.grey.shade500,
                      ),
                      Spacer(),
                      Icon(
                          Icons.keyboard_arrow_down
                      ),
                    ],
                  ),
                ),
                Container(height: 10,color: Colors.grey[300],),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey[200]!),
                          ),
                          child:TextFormField(
                            decoration: InputDecoration(
                                border:InputBorder.none,
                                hintText: "Write something...",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                )
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.image,
                        weight: 3,
                        size: 35,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  height: 70,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey[300]!)
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                weight: 3,
                                size: 30,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "Anonymous post",textAlign: TextAlign.start,style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey[300]!)
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.emoji_emotions,
                                weight: 3,
                                size: 30,
                                color: Colors.yellow,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "Feeling",textAlign: TextAlign.start,style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey[300]!)
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                weight: 3,
                                size: 30,
                                color: Colors.redAccent,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "Check",textAlign: TextAlign.start,style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 10,color: Colors.grey[300],),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child:  Row(
                    children: [
                      Text(
                        "Most relevant",textAlign: TextAlign.start,style: TextStyle(
                        fontSize: 22,fontWeight: FontWeight.bold,
                      ),

                      ),
                      Spacer(),
                      Icon(
                          Icons.menu
                      ),
                    ],
                  ),
                ),
                Container(height: 10,color: Colors.grey[300],),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child:  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.orangeAccent,
                        child: Center(
                          child: Icon(
                            Icons.person,color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anonymous participant",textAlign: TextAlign.start,style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.bold,
                          ),

                          ),
                          Row(

                            children: [
                              Text(
                                "8h .",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[300]
                              ),

                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.public,
                                weight: 3,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 220,),
                              Icon(
                                Icons.power_input_rounded,
                                weight: 3,
                                size: 25,
                                color: Colors.black,
                              ),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
