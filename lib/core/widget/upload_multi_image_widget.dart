import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../config/app_color.dart';
import '../../features/language/presentation/provider/language_provider.dart';
import '../constants/constants.dart';

class UploadMultiImageWidget extends StatelessWidget {
  const UploadMultiImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{

      },
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFBF8F8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(LanguageProvider.translate('upload', 'upload_image'),style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),),
                const Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.grey,size: Constants.isTablet?40:20,),
              ],
            ),
            // if(img.isNotEmpty)SizedBox(height: 0.5.h,),
            // if(img.isNotEmpty)SizedBox(
            //   width: 94.w,
            //   height: 20.w,
            //   child: ListView.builder(
            //     itemCount: img.length,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (ctx,i){
            //       return InkWell(
            //         onTap: (){
            //           img.removeAt(i);
            //           setState(() {
            //
            //           });
            //         },
            //         child: Padding(
            //           padding: EdgeInsets.symmetric(horizontal: 2.w),
            //           child: Container(
            //             width: 20.w,
            //             height: 20.w,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(8),
            //               image: DecorationImage(
            //                 image: FileImage(File(img[i].path)),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            SizedBox(height: 0.5.h,),
            Row(
              children: [
                // if(img.isNotEmpty)Text(translate(context, 'add_ad', 'delete'),style: TextStyle(
                //   color: mainColor,
                //   fontSize: 12.sp,
                // ),),
                const Spacer(),
                Text('8/8',style: TextStyle(
                  color: AppColor.defaultColor,
                  fontSize: 12.sp,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
