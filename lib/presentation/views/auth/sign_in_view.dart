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

import '../../../core/utils/asset_gen/gen/assets.gen.dart';
import '../../components/common/custom_line_container.dart';
import '../../styles/decorations/scaffold_background_painter.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthViewModel>(context);
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return Scaffold(
      backgroundColor: Color(0xFF817D88),
      body: Stack(
        children: [
          // Top blurred shape
          ScaffoldBackGroundPainter.topBlurredShape(),
          // Bottom blurred shape
          ScaffoldBackGroundPainter.bottomBlurredShape(),
          //Form
          SizedBox(
            height: screenHeight,
            width: screenWidth,

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
                    Text(AppStrings.signInTitleText,
                        style: AppFontStyle.authTitleTextStyle),

                    //Spacer
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),

                    //Subtitle of sign in View
                    Text(AppStrings.enterEmailAndPassText,
                        style: AppFontStyle.authSubTitleTextStyle),

                    //Spacer
                    SizedBox(
                      height: screenHeight * 0.04,
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
                              borderSide: BorderSide(color: AppColors.kGreyA8A6A7Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.kGreyA8A6A7Color))),
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
                            suffixIcon: IconButton(onPressed: (){
                             authProvider.setPasswordObsecureText(!authProvider.passwordObsecureText);
                            }, icon: Icon(authProvider.passwordObsecureText == true ? Icons.visibility_off : Icons.visibility,color:AppColors.kBrownD87234Color,)),
                            hintText: "Password",
                            hintStyle: AppFontStyle.authSubTitleTextStyle
                                .copyWith(color: AppColors.kGreyA8A6A7Color),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.kGreyA8A6A7Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.kGreyA8A6A7Color))),
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

                    //Forgot password
                    Container(
                      margin: EdgeInsets.only(left: screenWidth * 0.6),
                      child: TextButton(
                          onPressed: () {
                            debugPrint("Forgot password button Pressed");
                          },
                          child: Text(
                            AppStrings.forgotPasswordText,
                            style: AppFontStyle.authSubTitleTextStyle.copyWith(
                                color: AppColors.kBrownD87234Color,
                                fontWeight: FontWeight.bold),
                          )),
                    ),

                    //Spacer
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),

                    //Sign In Button
                    CustomButton(
                      titleText: AppStrings.loginButtonText,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          debugPrint("Sign in");
                          Navigator.of(context).pushNamed(RoutesName.homeView);
                          _emailController.clear();
                          _passwordController.clear();
                        }
                      },
                    ),

                    //Spacer
                    SizedBox(
                      height: screenHeight * 0.013,
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

                    //Other Methods of SIGN-IN
                    SizedBox(
                      height: screenHeight * 0.3,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //Line container
                              CustomLineContainer(),
                              //Spacer in row
                              SizedBox(
                                width: screenWidth * 0.02,
                              ),

                              //"Sign In with" Text widget
                              Text(
                                AppStrings.signInWithText,
                                style: AppFontStyle.authSubTitleTextStyle
                                    .copyWith(color: AppColors.kBlackColor),
                              ),

                              //Spacer in row
                              SizedBox(
                                width: screenWidth * 0.02,
                              ),

                              //Line container
                              CustomLineContainer(),
                            ],
                          ),
                          //Spacer
                          SizedBox(
                            height: screenHeight * 0.03,
                          ),

                          //Social authentication
                          SizedBox(
                            height: screenHeight * 0.1,
                            width: screenWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //FaceBook Auth
                                InkWell(
                                    onTap: () {
                                      debugPrint("Facebook auth button Pressed");
                                    },
                                    child: Image.asset(
                                        Assets.images.logosFacebook.path)),

                                //Spacer
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),

                                //LinkedIn Auth
                                InkWell(
                                    onTap: () {
                                      debugPrint("LinkedIn auth button Pressed");
                                    },
                                    child: Image.asset(
                                        Assets.images.logosLinkedinIcon.path)),

                                //Spacer
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),

                                //Google Auth
                                InkWell(
                                    onTap: () {
                                      debugPrint("Google auth button Pressed");
                                    },
                                    child: Image.asset(
                                        Assets.images.grommetIconsGoogle.path)),
                              ],
                            ),
                          ),
                        ],
                      ),
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
