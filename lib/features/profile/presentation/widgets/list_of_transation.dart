import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/profile/presentation/widgets/transaction_widget.dart';

class ListOfTransactionWidgets extends StatelessWidget {
  const ListOfTransactionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Wrap(
        children: List.generate(2, (index) => TransActionWidgets()),
      ),
    );
  }


}
