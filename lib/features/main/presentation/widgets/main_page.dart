import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../home/presentation/provider/bottom_nav_provider.dart';
import '../../../home/presentation/widgets/bottom_nav_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var bottomNavProvider = Provider.of<BottomNavProvider>(context);

    return Scaffold(
      key: myKey,
      body: bottomNavProvider.changeNavWidget(),
      bottomNavigationBar:  const BottomNavWidget(),
      extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Padding(
      //   padding:  EdgeInsets.only(bottom: 15.h),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //
      //     children: [
      //       Container(
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(6.w),
      //             color: Colors.white
      //         ),
      //         child: TextButton(onPressed: (){
      //           navP(TestHome());
      //         }, child: Text(
      //           "Page 1",style: TextStyleClass.semiBoldStyle(),
      //         )),
      //       ),
      //       SizedBox(width: 3.w,),
      //       Container(
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(6.w),
      //             color: Colors.red
      //         ),
      //         child: TextButton(onPressed: (){
      //           navP(MyTestHome());
      //         }, child: Text(
      //
      //           "Page 2",style: TextStyleClass.semiBoldStyle(),
      //         )),
      //       ),
      //
      //     ],
      //   ),
      // ),

    );
  }
}
