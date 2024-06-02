import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/categories_page/presentation/widgets/category_container.dart';

class ListCategoryContainer extends StatelessWidget {
  const ListCategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: ListView.separated(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemBuilder: (context, index) {
            return CategoryContainer(index: index,);
          },
          separatorBuilder: (context, index) => SizedBox(width: 2.w,),
          itemCount: 8),
    );
  }
}
