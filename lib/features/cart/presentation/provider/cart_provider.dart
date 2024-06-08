import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/helper_function/navigation.dart';

import '../../../../config/text_style.dart';

class CartProvider with ChangeNotifier{

  TextEditingController myAddressController=TextEditingController();
  TextEditingController rawNumberController=TextEditingController();
  TextEditingController seatNumberController=TextEditingController();
  TextEditingController commentController=TextEditingController();
  TextEditingController myAddress=TextEditingController();

  double heightOfWidget({required bool need}){
    if(need){
      return 17.h;
    }
    return 12.h;
  }

  void goTo({required Widget page}){
    navP(page);
  }

  Widget quantityWidget({required bool need}){
    if(need){
      return Row(
        children: [
          Container(
            padding: EdgeInsets.all(0.5.w),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.7),width: 2),
                borderRadius: BorderRadius.circular(5.w)
            ),
            child: Icon(Icons.remove,size: 16.sp,color: Colors.grey.withOpacity(0.7),),
          ),
          SizedBox(width: 2.w,),
          Text(
            "1",style: TextStyleClass.semiBoldStyle(),
          ),
          SizedBox(width: 2.w,),
          Container(
            padding: EdgeInsets.all(0.5.w),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 3),
                borderRadius: BorderRadius.circular(5.w)
            ),
            child: Icon(Icons.add,size: 16.sp,color: Colors.grey,),
          ),
        ],
      );
    }
    return const SizedBox();
  }


  List<String> paymentMethods= ["كاش","فيزا","محفظة"];
  int paymentSelectedIndex = 0;
  void changeIndex({required int paymentSelectedIndex}){
    this.paymentSelectedIndex = paymentSelectedIndex;
    notifyListeners();
  }
  bool selectPayment({required int paymentSelectedIndex}){
    if(this.paymentSelectedIndex ==paymentSelectedIndex){
      return true;
    }
    return false;
  }

  List<String> couponsList= ["123556","202165","506908"];
  int couponIndex = 0;

  Color borderOfCoupon({required int couponIndex}){
    if(this.couponIndex ==couponIndex){
      return HexColor("#581D8A");
    }
    return HexColor("#BABABA");
  }
  void changeCouponIndex({required int couponIndex}){
    this.couponIndex = couponIndex;
    notifyListeners();
  }



}