import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/components/common/custom_button.dart';
import 'package:jannah_journal/presentation/components/common/rich_text_widget.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/text_field_decoration.dart';

import '../../../core/utils/asset_gen/gen/assets.gen.dart';
import '../../components/common/custom_line_container.dart';
import '../../styles/decorations/scaffold_cont_decoration.dart';

class SignUpView extends StatelessWidget {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController  _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.red[200], //testing color
        // decoration: boxDecoration(context),

        //the sign Up view root widget
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Spacer
                SizedBox(
                  height: screenHeight * 0.15,
                ),
                //Title text of Sign View
                Text(AppStrings.signUpTitleText,
                    style: AppFontStyle.authTitleTextStyle),

                //Spacer
                SizedBox(
                  height: screenHeight * 0.03,
                ),

                //Subtitle of sign in View
                Text(AppStrings.signUpSubtitleText,
                    style: AppFontStyle.authSubTitleTextStyle),

                //Spacer
                SizedBox(height: screenHeight * 0.05,),
                //TextFormField for Name
                SizedBox(
                  width: screenWidth * 0.87,
                  child: TextFormField(
                    controller: _nameController,
                    style: AppFontStyle.authSubTitleTextStyle,
                    decoration: TextFieldDecorations.textFieldDecoration(
                        hintFieldText: "Name", obsecureFlag: "Not"),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Please enter your Name";
                      }
                      return null;
                    },
                  ),
                ),

                //Spacer
                SizedBox(
                  height: screenHeight * 0.0,
                ),

                //TextFormField for Email
                SizedBox(
                  width: screenWidth * 0.87,
                  child: TextFormField(
                    controller: _emailController,
                    style: AppFontStyle.authSubTitleTextStyle,
                    decoration: TextFieldDecorations.textFieldDecoration(
                        hintFieldText: "Email",obsecureFlag: "Not"),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                          .hasMatch(value)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                ),

                //TextFormField for Password
                SizedBox(
                  width: screenWidth * 0.87,
                  child: TextFormField(
                    controller: _passwordController,
                    style: AppFontStyle.authSubTitleTextStyle,
                    decoration: TextFieldDecorations.textFieldDecoration(
                        hintFieldText: "Password",obsecureFlag: "Exist"),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                     return null;
                    },
                  ),
                ),
                //Spacer
                SizedBox(
                  height: screenHeight * 0.0,
                ),

                //Confirm Password
                SizedBox(
                  width: screenWidth * 0.87,
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    style: AppFontStyle.authSubTitleTextStyle,
                    obscureText: true,
                    decoration: TextFieldDecorations.textFieldDecoration(
                        hintFieldText: "Confirm Password",obsecureFlag: "Exist"),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                     return null;
                    },
                  ),
                ),

                //Spacer
                SizedBox(
                  height: screenHeight * 0.07,
                ),

                //Sign In Button
                CustomButton(titleText: AppStrings.signUpButtonText,onTap: (){
                  if(_formKey.currentState!.validate()){
                    debugPrint("Sign up");
                  }
                },),

                //Spacer
                SizedBox(
                  height: screenHeight * 0.04,
                ),

                //Don't have account widget
                RichTextWidget(
                    normalText: AppStrings.dontHaveAccountText,
                    clickableText: AppStrings.signUpTitleText,
                    onTap: () {
                      debugPrint("Sign Up button Pressed");
                      Navigator.of(context).pushNamed(RoutesName.signUpView);
                    }),

                //spacer
                SizedBox(
                  height: screenHeight * 0.05,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
