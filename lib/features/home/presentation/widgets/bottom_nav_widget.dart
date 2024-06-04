import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/home/presentation/provider/bottom_nav_provider.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var bottomNavProvider = Provider.of<BottomNavProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.w),
            topRight: Radius.circular(8.w))
      ),
      child: Wrap(
          spacing: 5.w,
          children: List.generate(
              bottomNavProvider.myBottomNavWidgets.length,
              (index) => InkWell(
                onTap: (){
                  bottomNavProvider.changeNavIndex(index: index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                        children: [
                          SvgWidget(
                            svg: bottomNavProvider.myBottomNavWidgets[index]['svg'],
                            height: 5.w,
                            width: 5.w,
                            color: bottomNavProvider.colorOfNavWidget(index: index),
                          ),
                          SizedBox(
                            height: 2.w,
                          ),
                          Text(
                            bottomNavProvider.myBottomNavWidgets[index]['text'],
                            style: TextStyleClass.smallStyle(
                                color: bottomNavProvider.colorOfNavWidget(index: index)),
                          ),
                        ],
                      ),
                ),
              )
          )
      ),
    );
  }
}
