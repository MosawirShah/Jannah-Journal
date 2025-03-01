import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jannah_journal/core/constants/app_images_url.dart';
import 'package:jannah_journal/presentation/components/common/bottom_nav_widget.dart';
import 'package:jannah_journal/presentation/components/common/custom_app_bar.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/view_models/settings_view_model.dart';
import 'package:provider/provider.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/screen_utils.dart';
import '../styles/decorations/scaffold_background_painter.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    final notificationProvider = Provider.of<SettingsViewModel>(context);
    return Scaffold(
      backgroundColor: AppColors.kGrey7D7C88Color,
      appBar: CustomAppBar(
        appBarTitle: "Settings",
        leadingIconWidget: Image.asset(AppImagesURL.arrowBackImage),
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        actionAppBar: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(child: SvgPicture.asset(AppImagesURL.settingIcon, height: screenHeight * 0.03,)),
          ),
        ],
      ),
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
                  //spacer
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),

                  //First Card Widget
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04),
                    child: Card(
                      color: AppColors.kBlack202020Color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Spacer
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          //Title
                          Padding(
                            padding: EdgeInsets.only(
                                top: screenHeight * 0.015,
                                left: screenWidth * 0.02),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: AppColors.kBlackColor,
                                  child: Image.asset(AppImagesURL.hijabImage),
                                ),
                                //spacer
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                Text("Fatima Bint Muhammad",
                                    style: AppFontStyle.rubikFontStyle),
                              ],
                            ),
                          ),
                          //spacer
                          SizedBox(
                            height: screenHeight * 0.007,
                          ),
                          Divider(),
                          //Spacer
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenHeight * 0.005,
                              left: screenWidth * 0.033,
                            ),
                            child: Text(
                              "Account Settings",
                              style: AppFontStyle.rubikFontStyle.copyWith(
                                fontSize: 18,
                                color: AppColors.kGreyADADADColor,
                              ),
                            ),
                          ),
                          //spacer
                          SizedBox(
                            height: screenHeight * 0.005,
                          ),
                          ReusableListTile(
                            title: "Account",
                            screenHeight: screenHeight,
                            onTap: () {},
                            buttonIcon: Image.asset(
                              AppImagesURL.arrowForwardImage,
                              color: AppColors.kWhiteColor,
                              height: screenHeight * 0.023,
                            ),
                          ),
                          ReusableListTile(
                            title: "Change password",
                            screenHeight: screenHeight,
                            onTap: () {},
                            buttonIcon: Image.asset(
                              AppImagesURL.arrowForwardImage,
                              color: AppColors.kWhiteColor,
                              height: screenHeight * 0.023,
                            ),
                          ),
                          ReusableListTile(
                            title: "Add a payment method",
                            screenHeight: screenHeight,
                            onTap: () {},
                            buttonIcon: Icon(Icons.add,size: 23,color: AppColors.kWhiteColor,),
                          ),
                         ///PUSH Notification Button
                        ListTile(
                          title: Text(
                            "Push notifications",
                            style: AppFontStyle.rubikFontStyle,
                          ),
                          trailing: Switch(
                            // This bool value toggles the switch.
                            value: notificationProvider.notificationValue,
                            inactiveThumbColor: AppColors.kBlackColor,
                            inactiveTrackColor: AppColors.kGrey2F2F2FColor,
                            activeTrackColor: AppColors.kGrey2F2F2FColor,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                                 notificationProvider.setNotificationValue(value);

                            },
                          )
                        ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenHeight * 0.005,
                              left: screenWidth * 0.033,
                            ),
                            child: Text(
                              "More",
                              style: AppFontStyle.rubikFontStyle.copyWith(
                                fontSize: 18,
                                color: AppColors.kGreyADADADColor,
                              ),
                            ),
                          ),
                          ReusableListTile(
                            title: "About us",
                            screenHeight: screenHeight,
                            onTap: () {},
                            buttonIcon: Image.asset(
                              AppImagesURL.arrowForwardImage,
                              color: AppColors.kWhiteColor,
                              height: screenHeight * 0.023,
                            ),
                          ),
                          ReusableListTile(
                            title: "Privacy policy",
                            screenHeight: screenHeight,
                            onTap: () {},
                            buttonIcon: Image.asset(
                              AppImagesURL.arrowForwardImage,
                              color: AppColors.kWhiteColor,
                              height: screenHeight * 0.023,
                            ),
                          ),
                          ReusableListTile(
                            title: "Terms and Conditions",
                            screenHeight: screenHeight,
                            onTap: () {},
                            buttonIcon: Image.asset(
                              AppImagesURL.arrowForwardImage,
                              color: AppColors.kWhiteColor,
                              height: screenHeight * 0.023,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02,)
                        ],
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

class ReusableListTile extends StatelessWidget {
  ReusableListTile(
      {required this.title,
      required this.onTap,
      required this.buttonIcon,
      required this.screenHeight,
      super.key});

  String title;
  VoidCallback onTap;
  double screenHeight;
  Widget buttonIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title.toString(),
        style: AppFontStyle.rubikFontStyle,
      ),
      trailing: InkWell(
        onTap: onTap,
        child: buttonIcon,
      ),
    );
  }
}
