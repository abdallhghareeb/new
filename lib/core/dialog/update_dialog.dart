import 'package:flutter/cupertino.dart';
import '../../config/app_color.dart';
import '../../features/language/presentation/provider/language_provider.dart';
import '../constants/constants.dart';
import '../helper_function/navigation.dart';


Future updateDialog(bool mustLogin)async{
  await showCupertinoModalPopup<void>(
    context: Constants.globalContext(),
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(LanguageProvider.translate('global', 'new_update'),style: const TextStyle(),),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          onPressed: ()async{
            // StoreRedirect.redirect(androidAppId: "com.user.fans_food",
            //     iOSAppId: "6499508192");
          },
          child: Text(LanguageProvider.translate('buttons', 'update'),
            style: const TextStyle(color: AppColor.defaultColor),),
        ),
        if(!mustLogin)CupertinoDialogAction(
          onPressed: ()async{
            navPop();
          },
          child: Text(LanguageProvider.translate('buttons', 'cancel'),style: const TextStyle(),),
        ),

      ],
    ),
  );
}