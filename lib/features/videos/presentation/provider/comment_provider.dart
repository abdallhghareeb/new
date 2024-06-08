import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../widgets/list_comment_widget.dart';

class CommentProvider extends ChangeNotifier {

  TextEditingController commentController =TextEditingController();

  void showCommentsDialog({required BuildContext context}){
    showDialog(context: context, builder:(context){
      return AlertDialog(
        scrollable: true,
        insetPadding: EdgeInsets.zero,
        alignment: Alignment.bottomCenter,
        contentPadding:EdgeInsets.zero,
        backgroundColor: Colors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5.w),topRight:Radius.circular(5.w) )),
        content:const ListCommentWidget(),
      );});
  }
}
