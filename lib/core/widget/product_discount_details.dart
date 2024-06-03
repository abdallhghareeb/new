// import 'package:flutter/material.dart';
//
//
// import '../../config/text_style.dart';
// import '../constant/constant.dart';
//
// class ProductDiscountDetails extends StatelessWidget {
//   final ProductEntity productEntity;
//   const ProductDiscountDetails({
//     super.key,
//     required this.productEntity,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(productEntity.title,
//             style: TextStyleClass.headBoldStyle(color: AppColor.defaultColor)),
//         Row(
//           children: [
//             RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                       text: productEntity.offerPrice != null
//                           ? "${productEntity.offerPrice} ${LanguageProvider.translate("payment", "SAR")}"
//                           : "${productEntity.price} ${LanguageProvider.translate("payment", "SAR")}",
//                       style: TextStyleClass.normalBoldStyle(
//                           color: AppColor.secColor)),
//                   productEntity.offerPrice != null
//                       ? WidgetSpan(
//                           child: Transform.translate(
//                             offset: Constants.isTablet
//                                 ? const Offset(0, -10)
//                                 : const Offset(0, 10),
//                             child: Text(
//                                 "${productEntity.price} ${LanguageProvider.translate("payment", "SAR")}",
//                                 style: TextStyleClass.normalLineThroughStyle(
//                                     color: AppColor.fifthColor)),
//                           ),
//                         )
//                       : const TextSpan(),
//                 ],
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
