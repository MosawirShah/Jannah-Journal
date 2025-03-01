import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_images_url.dart';
import 'package:jannah_journal/presentation/components/common/bottom_nav_widget.dart';
import 'package:jannah_journal/presentation/components/common/custom_app_bar.dart';
import 'package:jannah_journal/presentation/components/common/custom_common_button.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/dear_diary_text_field_decoration.dart';

import '../../core/constants/app_colors.dart';
import '../../core/utils/screen_utils.dart';
import '../styles/decorations/scaffold_background_painter.dart';

class DearDiaryView extends StatelessWidget {
  const DearDiaryView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColors.kGrey7D7C88Color,
        appBar: CustomAppBar(
            appBarTitle: "",
            leadingIconWidget: InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
                child: Image.asset(AppImagesURL.arrowBackImage)),
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            actionAppBar: [
              Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: (){},
                    child: Text(
                      "Cancel",
                      style: AppFontStyle.fontStyleInterSmallSize,
                    ),
                  )),
            ]),
        body: Stack(
          children: [
            //top
            ScaffoldBackGroundPainter.topBlurredShape(),
            //bottom,
            ScaffoldBackGroundPainter.bottomBlurredShape(),

            //Home View body Content
            SizedBox(
              height: screenHeight * 0.83,
              width: screenWidth,
              //   color: Colors.greenAccent,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.00,
                          horizontal: screenWidth * 0.0),
                      child: Text("New Journal Entry",
                          style: AppFontStyle.appTitleFontStyle),
                    ),

                    //spacer
                    SizedBox(
                      height: screenHeight * 0.0015,
                    ),

                    //subtitle
                    Text(
                      "February 24, 2022",
                      style: AppFontStyle.fontStyleInterSmallSize,
                    ),
                    //spacer
                    SizedBox(
                      height: screenHeight * 0.025,
                    ),

                    //First Card Widget
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.04, right: screenWidth * 0.04),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.00,
                              vertical: screenHeight * 0.00),
                          child: Column(
                            children: [
                              //Spacer
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              //Title
                              Text(
                                "Title",
                                style: AppFontStyle.appTitleFontStyle
                                    .copyWith(fontSize: 23),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenHeight * 0.002,
                                    left: screenWidth * 0.08,
                                    right: screenWidth * 0.08),
                                child: TextField(
                                  decoration: DearDiaryTextFieldDecoration
                                      .getTextFieldDecoration(),
                                ),
                              ),
                              //Spacer
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Text(
                                "My Story",
                                style: AppFontStyle.appTitleFontStyle
                                    .copyWith(fontSize: 23),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenHeight * 0.002,
                                    left: screenWidth * 0.08,
                                    right: screenWidth * 0.08),
                                child: TextField(
                                    maxLines: 6,
                                    decoration: DearDiaryTextFieldDecoration
                                        .getTextFieldDecoration()),
                              ),
                              //Spacer
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),

                              //Emoji and attachment
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //emoji widget
                                  ReusableColumnWidget(
                                      title: "Emoji",
                                      imageURL: AppImagesURL.emoji2Image,
                                      screenHeight: screenHeight,
                                      screenWidth: screenWidth),

                                  //spacer
                                  SizedBox(
                                    width: screenWidth * 0.1,
                                  ),

                                  //attachment widget
                                  ReusableColumnWidget(
                                      title: "Attachment",
                                      imageURL: AppImagesURL.attachmentImage,
                                      screenHeight: screenHeight,
                                      screenWidth: screenWidth),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              CustomCommonButton(
                                onTap: (){},
                                  buttonTitle: "Save the memory",
                                  buttonHeight:
                                      ScreenUtils.screenHeight(context) * 0.055,
                                  buttonWidth: screenWidth * 0.7),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ///B0ttom Navigation Bar
            BottomNavWidget(),
          ],
        ),
      ),
    );
  }
}

//Reusable column widget
class ReusableColumnWidget extends StatelessWidget {
  ReusableColumnWidget(
      {required this.title,
      required this.imageURL,
      required this.screenHeight,
      required this.screenWidth,
      super.key});
  double screenHeight;
  double screenWidth;
  String imageURL;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: screenHeight * 0.06,
            width: screenWidth * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border(
                bottom: BorderSide(color: AppColors.kGrey909090Color, width: 2),
                top: BorderSide(color: AppColors.kGrey909090Color, width: 2),
                right: BorderSide(color: AppColors.kGrey909090Color, width: 2),
                left: BorderSide(color: AppColors.kGrey909090Color, width: 2),
              ),
              // color: Colors.green,
            ),
            child: Image.asset(imageURL)),
        Text(
          title,
          style: AppFontStyle.fontStyleInterSmallSize.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: AppColors.kGrey909090Color.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
