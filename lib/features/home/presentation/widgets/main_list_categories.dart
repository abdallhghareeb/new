import 'package:flutter/material.dart';
import 'package:untitled1/features/home/presentation/widgets/main_sub_category.dart';

class ListSubCategoriesWidget extends StatelessWidget {
  const ListSubCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(8, (index) => const SubCategoryWidget()),
    );
  }
}
