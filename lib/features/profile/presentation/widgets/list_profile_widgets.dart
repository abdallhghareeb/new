import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/profile/presentation/provider/profile_provider.dart';
import 'package:untitled1/features/profile/presentation/widgets/profile_widgets.dart';
import '../../../../config/text_style.dart';

class ListProfileWidgets extends StatelessWidget {
  const ListProfileWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    var profileProvider =Provider.of<ProfileProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        children: List.generate(profileProvider.myProfileIcons.length, (index) => ProfileWidgets(myWidgets: profileProvider.myProfileIcons[index],)),
      ),
    );
  }


}
