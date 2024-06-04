import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/home/presentation/provider/bottom_nav_provider.dart';
import 'package:untitled1/features/home/presentation/provider/home_provider.dart';
import 'package:untitled1/features/videos/presentation/pages/videos_home_page.dart';
import '../../../cart/presentation/provider/cart_provider.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavProvider>(context,listen: false);
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            provider.toggleBetweenHomeAndVideos();
          },
          child: SvgWidget(
            svg: Images.videoFile,
            height: 6.w,
            width: 6.w,
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        SvgWidget(
          svg: Images.notificationIcon,
          height: 6.w,
          width: 6.w,
        ),
        SizedBox(
          width: 3.w,
        ),
        SizedBox(
          width: 3.w,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "ابحث عن اي منتج لدينا",
                  style:
                      TextStyleClass.smallBoldStyle(color: HexColor("#BBBBBB")),
                ),
                const SizedBox(
                  width: 15,
                ),
                SvgWidget(
                  svg: "assets/images/grey_search_icon.svg",
                  height: 5.w,
                  width: 5.w,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
