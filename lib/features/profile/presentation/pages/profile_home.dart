import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/features/profile/presentation/widgets/balance_widget.dart';
import 'package:untitled1/features/profile/presentation/widgets/list_profile_widgets.dart';
import '../../../../core/constants/constants.dart';
import '../widgets/profile_header_widget.dart';


class ProfileHomePage extends StatelessWidget {
  ProfileHomePage({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: myKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("حسابي",style: TextStyleClass.normalBoldStyle(),),
      ),
      body:  Container(
          width: 100.w,
          height: 100.h,
          padding: appPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 3.h,),
                ProfileHeaderWidget(),
                SizedBox(height: 3.h,),
                ProfileBalanceWidget(),
                SizedBox(height: 1.h,),
                ListProfileWidgets(),
              ],
            ),
          )),
    );
  }
}
