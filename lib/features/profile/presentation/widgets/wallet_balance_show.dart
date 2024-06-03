import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/colors.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

import '../../../../config/text_style.dart';
import '../../../../core/constant/constant.dart';

class WalletBalanceShow extends StatelessWidget {
  const WalletBalanceShow({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        SvgWidget(svg: Images.wallet_icon,width: 94.w,height: 20.h,),
        Column(
          children: [],
        )
      ],
    );
  }


}
