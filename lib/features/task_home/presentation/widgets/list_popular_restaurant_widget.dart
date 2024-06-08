import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/task_home/presentation/widgets/popular_restaurant_widget.dart';

class ListPopularRestaurantWidget extends StatelessWidget {
  const ListPopularRestaurantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27.h,

      child: ListView.separated(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,

          itemBuilder: (context, index) =>PopularRestaurantWidget(),
          separatorBuilder: (context, index) => SizedBox(width: 2.w,),
          itemCount: 6),
    );
  }
}
