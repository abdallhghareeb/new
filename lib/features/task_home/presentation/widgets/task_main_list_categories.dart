import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/home/presentation/widgets/main_sub_category.dart';
import 'package:untitled1/features/task_home/presentation/widgets/task_main_sub_category.dart';

import '../provider/home_provider.dart';

class TaskListSubCategoriesWidget extends StatelessWidget {
  const TaskListSubCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var homeProvider = Provider.of<TaskHomeProvider>(context);
    return SizedBox(
      height: 15.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,

        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return TaskSubCategoryWidget(myMap: homeProvider.taskCategoriesList[index],);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 8.w,);
        },
        itemCount: homeProvider.taskCategoriesList.length,

      ),
    );
  }
}
