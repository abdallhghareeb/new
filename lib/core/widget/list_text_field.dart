import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

import '../../config/app_color.dart';
import '../../config/text_style.dart';
import '../../features/language/presentation/provider/language_provider.dart';
import '../models/text_field_model.dart';
import 'text_field.dart';

class ListTextFieldWidget extends StatelessWidget {
  const ListTextFieldWidget({super.key, required this.inputs});
  final List<TextFieldModel> inputs;
  @override
  Widget build(BuildContext context) {
    List<String> list = ["phone", "phone_number", "whatsapp"];

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: Column(
            children: List.generate(inputs.length, (index) {
          return
            // list.contains(inputs[index].label)
            //   ?
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  // Row(
                  //   children: [
                  //     SvgWidget(
                  //       svg: inputs[index].image!,
                  //       color: Colors.black,
                  //     ),
                  //     SizedBox(width: 2.w),
                  //     Text(
                  //       LanguageProvider.translate(
                  //           'inputs', inputs[index].label!),
                  //       style: TextStyleClass.normalStyle(),
                  //     )
                  //   ],
                  // ),
                //   IntlPhoneField(
                //
                //     enabled: true,
                //     showDropdownIcon: true,
                //     onSubmitted: (value) {
                //       FocusScope.of(context).nextFocus();
                //     },
                //     invalidNumberMessage:
                //         LanguageProvider.translate("inputs", "invalid_phone"),
                //     // dropdownIconPosition: IconPosition.trailing,
                //     decoration: InputDecoration(
                //       isDense: true,
                //       hintText: LanguageProvider.translate(
                //         'hints',
                //         inputs[index].hint!,
                //       ),
                //       fillColor: AppColor.greyLightColor,
                //       filled: true,
                //       hintStyle: TextStyleClass.normalStyle(color: Colors.grey),
                //       border: TextFieldWidget.decoration.border,
                //       disabledBorder: TextFieldWidget.decoration
                //           .disabledBorder, //TextFieldWidget.border(borderRadius: borderRadius, color: borderColor),
                //       focusedBorder: TextFieldWidget
                //           .decoration.focusedBorder, //TextFieldWidget.border(
                //
                //       enabledBorder: TextFieldWidget.decoration.enabledBorder,
                //       errorBorder: TextFieldWidget.decoration
                //           .errorBorder, //TextFieldWidget.border(color: Colors.red, borderRadius: borderRadius),
                //       focusedErrorBorder: TextFieldWidget.decoration
                //           .focusedErrorBorder, //TextFieldWidget.border(color: Colors.red, borderRadius: borderRadius),
                //       hoverColor: Colors.grey,
                //       contentPadding:
                //           EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                //     ),
                //     initialCountryCode: 'SA',
                //     showCountryFlag: true,
                //
                //     onChanged: (phone) {
                //       inputs[index].controller.text = phone.number;
                //       print(inputs[index].controller.text);
                //     },
                //   ),
                // ])
              TextFieldWidget(
                  // color: AppColor.greyLightColor,
                  controller: inputs[index].controller,
                  keyboardType: inputs[index].textInputType,
                  next: inputs[index].next,
                  onTextTap: inputs[index].onTap,
                  maxLines: 1,
                  validator: inputs[index].validator,
                  suffix: inputs[index].suffix,
                  hintText: inputs[index].hint,
                  prefix: inputs[index].prefix,
                  readOnly: inputs[index].readOnly,
                  titleWidget: inputs[index].title ??
                      Row(
                        children: [
                          inputs[index].image != null
                              ? SvgWidget(svg: inputs[index].image!)
                              : const SizedBox.shrink(),
                          SizedBox(width: 2.w),
                          inputs[index].label != null
                              ? Text(
                                  LanguageProvider.translate(
                                      'inputs', inputs[index].label!),
                                  style: TextStyleClass.normalStyle(),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                  titleText: inputs[index].titleText,
                  width: inputs[index].width,
                  contentPadding: inputs[index].contentPadding ??
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                )
        ]);})));
  }
}
