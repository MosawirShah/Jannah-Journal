import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jannah_journal/core/constants/app_images_url.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/components/common/bottom_nav_widget.dart';
import 'package:jannah_journal/presentation/components/common/custom_app_bar.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/scaffold_background_painter.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/routes_name.dart';


class OverviewView extends StatefulWidget {
  OverviewView({super.key});

  @override
  State<OverviewView> createState() => _OverviewViewState();
}

class _OverviewViewState extends State<OverviewView> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColors.kGrey7D7C88Color,
        appBar: CustomAppBar(
            appBarTitle: '"Reflect Grow Worship.“',
            leadingIconWidget: InkWell(
                 onTap: (){
                   Navigator.of(context).pushNamed(RoutesName.homeView);
                 },
                child: Image.asset(AppImagesURL.arrowBackImage)),
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            actionAppBar: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: InkWell(child: SvgPicture.asset(AppImagesURL.settingIcon, height: screenHeight * 0.03,)),
              ),
            ]),
        body: Stack(
          children: [
            ScaffoldBackGroundPainter.topBlurredShape(),
            ScaffoldBackGroundPainter.bottomBlurredShape(),
            SingleChildScrollView(
              child: SizedBox(
                  height: screenHeight,
                  width: screenWidth,
                  //color: Colors.greenAccent,
                  child: Column(
                    children: [
                      //Top TITLE
                      topWidgetOverview(screenHeight, screenWidth),
                      //Spacer
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text("Go to Journal Date",
                          style: AppFontStyle.robotoFontStyle
                              .copyWith(color: AppColors.kBlack38)),
                      //Spacer
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
                        ),
                        child: TableCalendar(
                          focusedDay: _selectedDate,
                          firstDay: DateTime(2000),
                          lastDay: DateTime(2100),
                          calendarStyle: CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.circle,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                          headerStyle: HeaderStyle(
                            formatButtonVisible: false,
                            titleCentered: true,
                            leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
                            rightChevronIcon: Icon(Icons.chevron_right, color: Colors.black),
                          ),
                          onDaySelected: (selectedDay, focusedDay) {
                            setState(() {
                              _selectedDate = selectedDay;
                            });
                          },
                          selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
                        ),
                      ),

                     // Spacer(),

                    ],
                  )),
            ),
            /// Bottom Navigation Bar
            BottomNavWidget(),
          ],
        ),
      ),
    );
  }
}

Widget topWidgetOverview(double screenHeight, double screenWidth) {
  return SizedBox(
      height: screenHeight * 0.2,
      //color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.03, right: screenWidth * 0.06),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //spacer
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Streak",
                  style: AppFontStyle.appTitleFontStyle,
                ),
                Text(
                  "137",
                  style: AppFontStyle.appTitleFontStyle
                      .copyWith(fontSize: 50, color: AppColors.kBlack26),
                )
              ],
            ),
            Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.2,
              decoration: BoxDecoration(
                  color: AppColors.kBlackColor, shape: BoxShape.circle),
              child: Stack(
                children: [
                  Center(child: Image.asset(AppImagesURL.heartImage)),
                  Positioned(
                      top: screenHeight * 0.07,
                      right: screenWidth * 0.04,
                      child: Image.asset(AppImagesURL.smallCircleImage)),
                ],
              ),
            ),
          ],
        ),
      ));
}
