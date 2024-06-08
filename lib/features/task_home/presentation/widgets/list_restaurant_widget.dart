import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/task_home/presentation/widgets/restaurant_widget.dart';

class ListRestaurantWidget extends StatelessWidget {
  const ListRestaurantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 2.h,
      children: List.generate(4, (index) => RestaurantWidget()),
    );
  }
}
