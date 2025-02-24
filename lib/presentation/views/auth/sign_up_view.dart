import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/components/common/custom_button.dart';
import 'package:jannah_journal/presentation/components/common/rich_text_widget.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/view_models/auth_view_model.dart';
import 'package:provider/provider.dart';

import '../../styles/decorations/scaffold_background_painter.dart';

class SignUpView extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //TODO: CURRENT WORKING
    final authProvider = Provider.of<AuthViewModel>(context,listen: false);
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return Scaffold(
      backgroundColor: AppColors.kGrey7D7C88Color,
      body: Stack(
        children: [
          // Top blurred shape
          ScaffoldBackGroundPainter.topBlurredShape(),

          // Bottom blurred shape
          ScaffoldBackGroundPainter.bottomBlurredShape(),

          //Form Data
          SingleChildScrollView(
            child: SizedBox(
              height: screenHeight,
              width: screenWidth,
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
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    //TextFormField for Name
                    SizedBox(
                      width: screenWidth * 0.87,
                      child: TextFormField(
                        controller: _nameController,
                        style: AppFontStyle.authSubTitleTextStyle,
                        decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: AppFontStyle.authSubTitleTextStyle
                                .copyWith(color: AppColors.kGreyA8A6A7Color),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.kGreyA8A6A7Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.kGreyA8A6A7Color))),
                        validator: (value) {
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
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: AppFontStyle.authSubTitleTextStyle
                                .copyWith(color: AppColors.kGreyA8A6A7Color),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.kGreyA8A6A7Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.kGreyA8A6A7Color))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          } else if (!RegExp(
                                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
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
                        obscureText: authProvider.passwordObsecureText,
                        style: AppFontStyle.authSubTitleTextStyle,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  authProvider.setPasswordObsecureText(
                                      !authProvider.passwordObsecureText);
                                },
                                icon: Icon(
                                  authProvider.passwordObsecureText == true
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: AppColors.kBrownD87234Color,
                                )),
                            hintText: "Password",
                            hintStyle: AppFontStyle.authSubTitleTextStyle
                                .copyWith(color: AppColors.kGreyA8A6A7Color),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.kGreyA8A6A7Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.kGreyA8A6A7Color))),
                        validator: (value) {
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
                        obscureText: authProvider.confirmPassObsecureText,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  authProvider.setConfirmPassObsecureText(
                                      !authProvider.confirmPassObsecureText);
                                },
                                icon: Icon(
                                  authProvider.confirmPassObsecureText == true
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: AppColors.kBrownD87234Color,
                                )),
                            hintText: "Confirm Password",
                            hintStyle: AppFontStyle.authSubTitleTextStyle
                                .copyWith(color: AppColors.kGreyA8A6A7Color),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.kGreyA8A6A7Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.kGreyA8A6A7Color))),
                        validator: (value) {
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
                    CustomButton(
                      titleText: AppStrings.signUpButtonText,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          debugPrint("Sign up");
                        }
                      },
                    ),

                    //Spacer
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),

                    //Don't have account widget
                    RichTextWidget(
                        normalText: AppStrings.dontHaveAccountText,
                        clickableText: AppStrings.signInTitleText,
                        onTap: () {
                          debugPrint("Back to Sign In View");
                          Navigator.of(context).pop();
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
        ],
      ),
    );
  }
}
