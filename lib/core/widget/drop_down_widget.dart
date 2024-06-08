import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/core/widget/text_field.dart';
import '../../config/text_style.dart';
import '../constants/constants.dart';
import '../dialog/drop_down_dialog.dart';
import '../models/drop_down_class.dart';


class DropDownWidget extends StatefulWidget {
  final DropDownClass dropDownClass;
  final double? width,borderRadius;
  final Color? borderColor;
  final void Function()? onTap;
  final EdgeInsets? padding;
  final String? titleText;
  const DropDownWidget({required this.dropDownClass,this.width,super.key, this.onTap,
    this.borderRadius, this.borderColor, this.padding, this.titleText});
  @override
  State<DropDownWidget> createState() => _DropDownWidgetState(dropDownClass);
}

class _DropDownWidgetState extends State<DropDownWidget> {
  DropDownClass dropDownClass;
  _DropDownWidgetState(this.dropDownClass);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(widget.titleText!=null)TitleTextFieldWidget(titleText: widget.titleText!),
        if(widget.titleText!=null)SizedBox(height: 0.5.h,),
        InkWell(
          onTap: (){
            FocusScope.of(context).unfocus();
            if(widget.onTap==null){
              showDropDownDialog(dropDownClass).then((value) => setState((){}));
            }else{
              widget.onTap!();
            }
          },
          child: Container(
            width: widget.width??100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius??5),
              color: Colors.white,
              border: Border.all(color: const Color(0xffE2E2E2),),
            ),
            child: Padding(
              padding: widget.padding??EdgeInsets.symmetric(horizontal: 3.w,
                  vertical: Constants.isTablet?1.h:1.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(dropDownClass.displayedName(),
                    style: TextStyleClass.normalBoldStyle(),),
                  const Spacer(),
                  // const SvgWidget(svg: Images.dropDownArrowIcon,color: Colors.black,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
