// import 'dart:io';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sizer/sizer.dart';
// import '../../config/app_color.dart';
// import '../../config/text_style.dart';
// import '../constants/images.dart';
//
// class UploadImageWidget extends StatelessWidget {
//   const UploadImageWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var authProvider = Provider.of<AuthProvider>(context);
//     return InkWell(
//       // onTap: () async {
//       //   if (authProvider.image != null) {
//       //     showDialog(
//       //         context: context,
//       //         builder: (ctx) {
//       //           return Container(
//       //             height: 40.w,
//       //             width: 40.w,
//       //             decoration: BoxDecoration(
//       //                 shape: BoxShape.circle,
//       //                 image: DecorationImage(
//       //                     image: authProvider.showUserImage(),
//       //                     fit: BoxFit.fill)),
//       //           );
//       //         });
//       //   }
//       // },
//       child: Container(
//         width: 55.w,
//         height: 25.h,
//         decoration: BoxDecoration(
//           color: AppColor.greyLightColor,
//           border: Border.all(color: AppColor.greyColor, width: 2),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
//         child: Column(
//           children: [
//             SizedBox(
//               width: 17.h,
//               height: 17.5.h,
//               child: Stack(
//                 children: [
//                   Container(
//                     width: 17.h,
//                     height: 17.5.h,
//                     decoration: const BoxDecoration(shape: BoxShape.circle),
//                     child:
//                     // authProvider.image != null
//                     //     ? Image.file(File(authProvider.image!.path),
//                     //         width: 17.w, height: 16.5.h, fit: BoxFit.cover,)
//                     //     : (authProvider.userEntity?.image != null)
//                     //         ? CachedNetworkImage(
//                     //             width: 17.w,
//                     //             height: 16.5.h,
//                     //             imageUrl: authProvider.userEntity!.image,
//                     //             fit: BoxFit.cover)
//                     //         :
//                     SvgWidget(
//                                 svg: Images.uploadPhotoIcon,
//                                 fit: BoxFit.cover,
//                                 width: 17.w,
//                                 height: 16.5.h),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: InkWell(
//                         onTap: () async {
//                           FocusScope.of(context).unfocus();
//                           XFile? image = await chooseImage();
//                           if (image != null) {
//                             authProvider.updateImage(image);
//                           }
//                         },
//                         child: SvgWidget(svg: Images.cameraIcon)),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 1.h),
//             Text(
//               LanguageProvider.translate('register', 'image'),
//               style: TextStyleClass.normalStyle(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
