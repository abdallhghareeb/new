import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/home/presentation/provider/bottom_nav_provider.dart';
import '../../../../core/constants/images.dart';
import '../widgets/list_videos_widget.dart';
import '../widgets/user_button_actions.dart';

class VideosHomePage extends StatelessWidget {
  const VideosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavProvider>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: SvgWidget(
            svg:  Images.videoSearch, width: 7.w,height: 7.w,
          ),
        ),
        title: Text(
          "الرئيسية",
          style: TextStyleClass.headBoldStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: GestureDetector(
              onTap: (){
                provider.toggleBetweenHomeAndVideos();
              },
              child: SvgWidget(
                svg:  Images.videoMenu, width: 7.w,height: 7.w,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: Colors.black,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ListVideosWidget(),
                  Positioned(left: 3.w,bottom:13.h,right: 3.w,child: const UserButtonActionsWidget()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
