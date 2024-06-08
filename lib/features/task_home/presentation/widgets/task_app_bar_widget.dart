import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../core/constants/images.dart';


class TaskAppBarRow extends StatelessWidget {
  TaskAppBarRow({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.5.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: HexColor("#18235a").withOpacity(0.8),
                  borderRadius: BorderRadius.circular(2.w),
                  border: Border.all(color:  HexColor("#314ac8"))
              ),
              child: DropdownMenuItem(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:2.w),
                    child: Text("العنوان الحالي",style: TextStyleClass.smallBoldStyle(color: Colors.white),),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined,size: 10.w,color: Colors.grey,),

                ],
              )),
            ),
          ),
          SizedBox(width: 2.w,),
          SizedBox(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.2.w,horizontal: 2.5.w),
                  decoration: BoxDecoration(
                      color: HexColor("#18235a").withOpacity(0.8),
                      borderRadius: BorderRadius.circular(2.w),
                      border: Border.all(color:  HexColor("#314ac8"))
                  ),
                  child: SvgWidget(
                    svg: Images.iconSearch,
                    color:  HexColor("#314ac8"),
                    height: 4.5.w,
                    width: 4.5.w,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.2.w,horizontal: 2.5.w),
                  decoration: BoxDecoration(
                      color: HexColor("#18235a").withOpacity(0.8),
                      borderRadius: BorderRadius.circular(2.w),
                      border: Border.all(color:  HexColor("#314ac8"))
                  ),
                  child: SvgWidget(
                    svg: Images.notificationIcon,
                    color:  HexColor("#314ac8"),
                    height: 4.5.w,
                    width: 4.5.w,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.2.w,horizontal: 2.5.w),
                  decoration: BoxDecoration(
                      color: HexColor("#18235a").withOpacity(0.8),
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color:  HexColor("#314ac8"))
                  ),
                  child: SvgWidget(
                    svg: Images.cartIcon,
                    color:  HexColor("#314ac8"),
                    height: 4.5.w,
                    width: 4.5.w,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
