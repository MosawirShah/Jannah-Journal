import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';

import '../app_font_style.dart';

class TextFieldDecorations {

  static InputDecoration textFieldDecoration({required String hintFieldText,required String obsecureFlag}) {
    return InputDecoration(
        suffixIcon: obsecureFlag == "Exist" ? IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off,color:AppColors.kBrownD87234Color,)): Icon(Icons.remove,color: Colors.transparent,),
        hintText: hintFieldText,
        hintStyle: AppFontStyle.authSubTitleTextStyle
            .copyWith(color: AppColors.kGreyA8A6A7Color),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.kGreyA8A6A7Color),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.kGreyA8A6A7Color)));
  }
}
