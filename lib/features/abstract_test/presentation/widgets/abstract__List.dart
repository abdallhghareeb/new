import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/models/abstract_model.dart';
import 'test_abstract_widget.dart';

class TestHomeList extends StatelessWidget {
  SuperAbstract superAbstract ;
  TestHomeList({super.key,required this.superAbstract});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: [
          ...List.generate(superAbstract.superList()?.length ??0, (index) {
            return  TestWidget(abstractModel: superAbstract.superList()![index],);
          }),
        ]
      ),
    );
  }
}
