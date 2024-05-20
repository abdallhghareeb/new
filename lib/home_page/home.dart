import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';
import 'package:card_swiper/card_swiper.dart';

import '../map_page/map.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();
  double? progress;
  bool download = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, States>(
      builder: (BuildContext context, state) {
        return Scaffold(
          key: myKey,
          body: SafeArea(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/video_file.svg',
                        width: 26.0,
                        height: 26.0,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SvgPicture.asset(
                        'assets/images/notification_icon.svg',
                        width: 26.0,
                        height: 26.0,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "ابحث عن اي منتج لدينا",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: HexColor("#BBBBBB"),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DIN"),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset(
                                'assets/images/grey_search_icon.svg',
                                width: 15.0,
                                height: 15.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 240,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(10), // Image radius
                            child: const Image(
                              image: AssetImage(
                                "assets/images/b902b0715d1fac019553c429cd757de0.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 3,
                    pagination: const SwiperPagination(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "الفئات",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "DIN"),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child:  Row(
                              children: [
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/manifactures_icon.svg',
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "المصنعين",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/producers_icon.svg',
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "المنتجين",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/wholesale_markets.svg',
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "الجملة",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/shops_icon.svg',
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "الأسواق",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/square_more_icon.svg',
                                        width: 32.0,
                                        height: 32.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "أخري",
                                        style: TextStyle(
                                            fontSize: 16.0,

                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/path_distance_icon.svg',
                                        width: 32.0,
                                        height: 32.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "الموزعين",
                                        style: TextStyle(
                                            fontSize: 14.0,

                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/agents_icon.svg',
                                        width: 32.0,
                                        height: 32.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "الوكلاء",
                                        style: TextStyle(
                                            fontSize: 16.0,

                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/suppliers_icon.svg',
                                        width: 32.0,
                                        height: 32.0,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "الموردين",
                                        style: TextStyle(
                                            fontSize: 16.0,

                                            fontFamily: "DIN"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "المطاعم الايطالية",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "DIN"),
                    ),
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 1/1.1,
                  children:  List.generate(2, (index) {
                    return  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MapScreen(),));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]
                        ),
                        child: Column(
                      
                          children: [
                            SizedBox(
                              height: 120,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(10), // Image radius
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/images/06d3e39bd765eeb20835f8972951a8e3.jpeg",
                                    ),
                                    fit: BoxFit.fill,
                                    height: 200,
                      
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "بيتزا خضار مع اضافة صوصات",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: "DIN"),
                                  ),
                                  Text(
                                    "وصف عن المنتج وصف عن المنتج وصف عن المنتج ",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: HexColor("#878787"),
                                      fontFamily: "DIN",),maxLines: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "    ر.س" ,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor("#25A189"),
                                          fontFamily: "DIN",),maxLines: 2,
                                      ),
                                      Text(
                                        " 3.2" ,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor("#25A189"),
                                          fontFamily: "DIN",),maxLines: 2,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 20,),

              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: 3,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.person),
                  label: "حسابي",
                  backgroundColor:Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.access_time),
                label: "طلباتي",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.mail_outline_outlined),
                label: "الدردشة",
              ),



              BottomNavigationBarItem(icon: Icon(Icons.home),
                label: "الرئيسية",
              ),

            ],
            elevation: 0,
            unselectedLabelStyle:TextStyle(
                color:  Colors.grey.shade300
            ),
            selectedLabelStyle: TextStyle(
              color:  HexColor("#25A189")
            ),
            selectedItemColor: HexColor("#25A189"),
            unselectedItemColor: Colors.grey.shade300,
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
