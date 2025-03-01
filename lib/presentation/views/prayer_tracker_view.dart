import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jannah_journal/core/constants/app_images_url.dart';
import 'package:jannah_journal/core/routes/app_routes.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/presentation/components/common/bottom_nav_widget.dart';
import 'package:jannah_journal/presentation/components/common/custom_app_bar.dart';
import 'package:jannah_journal/presentation/components/common/custom_common_button.dart';
import 'package:jannah_journal/presentation/components/common/custom_line_container.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/dear_diary_text_field_decoration.dart';
import 'package:jannah_journal/presentation/view_models/prayer_tracker_view_model.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/utils/screen_utils.dart';
import '../components/widgets/prayer_tracker/reusable_row_pray_tracker.dart';
import '../styles/decorations/scaffold_background_painter.dart';

class PrayerTrackerView extends StatelessWidget {
  PrayerTrackerView({super.key});

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final prayerTrackerProvider = Provider.of<PrayerTrackerViewModel>(context);
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColors.kGrey7D7C88Color,
        appBar: CustomAppBar(
            appBarTitle: '"come to success"',
            leadingIconWidget: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(RoutesName.homeView);
                },
                child: Image.asset(AppImagesURL.arrowBackImage)),
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            actionAppBar: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: InkWell(
                    child: SvgPicture.asset(
                  AppImagesURL.settingIcon,
                  height: screenHeight * 0.03,
                )),
              ),
            ]),
        body: Stack(
          children: [
            //top
            ScaffoldBackGroundPainter.topBlurredShape(),
            //bottom,
            ScaffoldBackGroundPainter.bottomBlurredShape(),

            //Home View body Content
            SizedBox(
              height: screenHeight,
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
                      child: Text("February 24,2022",
                          style: AppFontStyle.appTitleFontStyle),
                    ),

                    //spacer
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),

                    //TODO: Card Widget
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.03, right: screenWidth * 0.03),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0,
                                    vertical: screenHeight * 0.012),
                                child: ReusableRowPrayerTracker(
                                  buttonID: 1,
                                  rowWidgetText: "Al-Fajar",
                                  onTapCheckBox: () {
                                    prayerTrackerProvider.toggle(1);
                                    prayerTrackerProvider.setPrayerCount(1);
                                  },
                                ),
                              ),

                              //Separation line
                              CustomLineContainer(
                                lineWidth: screenWidth * 0.85,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0,
                                    vertical: screenHeight * 0.012),
                                child: ReusableRowPrayerTracker(
                                  buttonID: 2,
                                  rowWidgetText: "Al-Dhuhr",
                                  onTapCheckBox: () {
                                    prayerTrackerProvider.toggle(2);
                                    prayerTrackerProvider.setPrayerCount(2);
                                  },
                                ),
                              ),
                              //Separation line
                              CustomLineContainer(
                                lineWidth: screenWidth * 0.85,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0,
                                    vertical: screenHeight * 0.012),
                                child: ReusableRowPrayerTracker(
                                  buttonID: 3,
                                  rowWidgetText: "Al-Asr",
                                  onTapCheckBox: () {
                                    prayerTrackerProvider.toggle(3);
                                    prayerTrackerProvider.setPrayerCount(3);
                                  },
                                ),
                              ),
                              //Separation line
                              CustomLineContainer(
                                lineWidth: screenWidth * 0.85,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0,
                                    vertical: screenHeight * 0.012),
                                child: ReusableRowPrayerTracker(
                                  buttonID: 4,
                                  rowWidgetText: "Al-Maghrib",
                                  onTapCheckBox: () {
                                    prayerTrackerProvider.toggle(4);
                                    prayerTrackerProvider.setPrayerCount(4);
                                  },
                                ),
                              ),
                              //Separation line
                              CustomLineContainer(
                                lineWidth: screenWidth * 0.85,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0,
                                    vertical: screenHeight * 0.012),
                                child: ReusableRowPrayerTracker(
                                  buttonID: 5,
                                  rowWidgetText: "Al-Isha",
                                  onTapCheckBox: () {
                                    prayerTrackerProvider.toggle(5);
                                    prayerTrackerProvider.setPrayerCount(5);
                                  },
                                ),
                              ),
                              //Separation line
                              CustomLineContainer(
                                lineWidth: screenWidth * 0.85,
                              ),
                              //Spacer
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              SizedBox(
                                  width: screenWidth * 0.9,
                                  child: Center(
                                      child: Text(
                                    "${prayerTrackerProvider.getDigit()} Prayers Left",
                                    style: AppFontStyle.prayerTrackerFontStyle
                                        .copyWith(
                                            color: AppColors.kGrey909090Color,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w100),
                                  ))),
                              //Spacer
                              SizedBox(
                                height: screenHeight * 0.012,
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

            ///Bottom Nav Bar
            BottomNavWidget(),
          ],
        ),
      ),
    );
  }
}
