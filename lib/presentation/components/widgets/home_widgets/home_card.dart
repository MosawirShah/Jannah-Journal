//Card Widget
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/screen_utils.dart';
import '../../../styles/app_font_style.dart';

class HomeCard extends StatelessWidget {
  HomeCard(
      {required this.title,
        required this.subtitle,
        required this.leadingImagePath,
        required this.descriptionText,
        super.key});

  String title;
  String subtitle;
  String leadingImagePath;
  String descriptionText;

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.009, horizontal: screenWidth * 0.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(title,
                  style: AppFontStyle.fontStyleInterSmallSize
                      .copyWith(fontSize: 20)),
              leading: Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.09,
                  child: Image.asset(
                    leadingImagePath.toString(),
                    fit: BoxFit.cover,
                  )),
              subtitle: Text(subtitle.toString()),
            ),

            //Spacer
            SizedBox(
              height: screenHeight * 0.00,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: screenHeight * 0.0,
                left: screenWidth * 0.02,
              ),
              child: Text(
                "Attachment",
                style:
                AppFontStyle.fontStyleInterSmallSize.copyWith(fontSize: 13),
              ),
            ),

            //see image widget
            Padding(
              padding: EdgeInsets.only(
                bottom: screenHeight * 0.0,
                left: screenWidth * 0.02,
              ),
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    "See image",
                    style: AppFontStyle.fontStyleInterSmallSize.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.kGrey909090Color),
                  )),
            ),

            //Description widget
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.017,
                left: screenWidth * 0.02,
              ),
              child: Text(
                "Description",
                style:
                AppFontStyle.fontStyleInterSmallSize.copyWith(fontSize: 13),
              ),
            ),

            //Description text
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.004,
                bottom: screenHeight * 0.01,
                left: screenWidth * 0.02,
              ),
              child: Text(
                descriptionText.toString(),
                style: AppFontStyle.fontStyleInterSmallSize.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: AppColors.kGrey909090Color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
