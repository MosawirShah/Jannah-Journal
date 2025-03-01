import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jannah_journal/core/constants/app_images_url.dart';
import 'package:jannah_journal/presentation/components/common/bottom_nav_widget.dart';
import 'package:jannah_journal/presentation/components/common/custom_app_bar.dart';
import 'package:jannah_journal/presentation/components/common/custom_common_button.dart';
import 'package:jannah_journal/presentation/components/common/custom_line_container.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/dear_diary_text_field_decoration.dart';
import 'package:jannah_journal/presentation/view_models/prayer_tracker_view_model.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/routes_name.dart';
import '../../core/utils/screen_utils.dart';
import '../components/widgets/prayer_tracker/reusable_row_pray_tracker.dart';
import '../styles/decorations/scaffold_background_painter.dart';

class DuaView extends StatelessWidget {
  DuaView({super.key});

  bool isChecked = false;

  String duaInEnglish1 =
      "Allahumma ishfini shifā’an lā yughadiru saqaman, wa ‘āfini fī badani wa rūḥi.O Allah, grant me healing that leaves no ailment behind and bless me with well-being in my body and soul";

  String duaInEnglish2 =
      "Allahumma kfini bi-ḥalālika \‘an ḥarāmik, wa aghnini bi-faḍlika \‘amman siwāk.O Allah, suffice me with what is lawful over what is forbidden, and make me independent by Your bounty from all others.";


  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColors.kGrey7D7C88Color,
        appBar: CustomAppBar(
            appBarTitle: '"Pray. Trust. Receive."',
            leadingIconWidget: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(RoutesName.homeView);
              },
                child: Image.asset(AppImagesURL.arrowBackImage)),
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            actionAppBar: [
              Padding(
        padding:  EdgeInsets.only(right: screenWidth * 0.05),
        child: SvgPicture.asset('assets/icons/setting_icon.svg',height: screenHeight * 0.03,),
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
                          vertical: screenHeight * 0.04,
                          horizontal: screenWidth * 0.0),
                      child: Text("Your Personal Du’a Collection",
                          style: AppFontStyle.appTitleFontStyle
                              .copyWith(fontSize: 26)),
                    ),

                    //spacer
                    SizedBox(
                      height: screenHeight * 0.0,
                    ),

                    //TODO: Card Widget
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.033, right: screenWidth * 0.033),
                      child: Card(
                        child: Column(
                          children: [
                            //spacer
                            SizedBox(height: screenHeight * 0.015,),
                            Text("1. Du’a for Healing & Good Health",style: AppFontStyle.duaFontStyle.copyWith(fontWeight: FontWeight.bold)),
                            //spacer
                            SizedBox(height: screenHeight * 0.015,),
                            Text(
                              "اللهم اشفني شفاءً لا يغادر سقماً، وعافني في بدني وروحي.",style: AppFontStyle.duaFontStyle.copyWith(

                            ),),
                            //spacer
                            SizedBox(height: screenHeight * 0.01,),
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth * 0.05,right: screenWidth * 0.05),
                              child: Text(duaInEnglish1,textAlign: TextAlign.center,style: AppFontStyle.duaFontStyle.copyWith(
                                  fontStyle: FontStyle.italic,color: AppColors.kBlack38
                              ),),
                            ),
                            //spacer
                            SizedBox(height: screenHeight * 0.02,),
                            //Separation line
                            CustomLineContainer(
                              lineWidth: screenWidth * 0.74,
                            ),
                            //spacer
                            SizedBox(height: screenHeight * 0.015,),
                            Text("2. Du’a for Healing & Good Health",style: AppFontStyle.duaFontStyle.copyWith(fontWeight: FontWeight.bold)),
                            //spacer
                            SizedBox(height: screenHeight * 0.015,),
                            Text(
                              ".اللهم اكفني بحلالك عن حرامك، وأغنني بفضلك عمن سواك",style: AppFontStyle.duaFontStyle.copyWith(

                            ),),
                            //spacer
                            SizedBox(height: screenHeight * 0.01,),
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth * 0.05,right: screenWidth * 0.05),
                              child: Text(duaInEnglish2,textAlign: TextAlign.center,style: AppFontStyle.duaFontStyle.copyWith(
                                  fontStyle: FontStyle.italic,color: AppColors.kBlack38
                              ),),
                            ),
                            //spacer
                            SizedBox(height: screenHeight * 0.01,),
                            //Separation line
                            CustomLineContainer(
                              lineWidth: screenWidth * 0.74,
                            ),


                            //Spacer
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            SizedBox(
                                width: screenWidth * 0.9,
                                child: Center(
                                    child: Text(
                                  "More...",
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
