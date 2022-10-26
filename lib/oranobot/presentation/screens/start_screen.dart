import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranos/oranobot/presentation/components/shared_widgets.dart';
import 'package:oranos/oranobot/presentation/resources/assets_manager.dart';
import 'package:oranos/oranobot/presentation/resources/color_manager.dart';
import 'package:oranos/oranobot/presentation/resources/font_manager.dart';
import 'package:oranos/oranobot/presentation/resources/routes_manager.dart';
import 'package:oranos/oranobot/presentation/resources/strings_manager.dart';
import 'package:oranos/oranobot/presentation/resources/styles_manager.dart';
import 'package:oranos/oranobot/presentation/resources/values_manager.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
           Image.asset(ImageAssets.backImg,fit: BoxFit.fill,),
            /// ToDo : svg image
            //SvgPicture.asset(ImageAssets.backImage),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.logo,fit: BoxFit.fill,),
                Text(AppStrings.expertFromEveryPlanet,style: getSemiBoldStyle(size: FontSize.s19,color: ColorManager.semiBoldFontColor),),
              ],
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(AppSize.s8),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, Routes.getStartRoute);
                          },
                          height: AppSize.s53,
                          color: ColorManager.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s6),
                          ),
                          minWidth: AppSize.s250,
                          child: Text(AppStrings.getStarted,style: getMediumStyle(size:  FontSize.s18,color: ColorManager.pureWhite),),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(AppSize.s8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(AppStrings.dontHaveAnAccount,
                              style: getRegularStyle(size: AppSize.s12,color: ColorManager.pureBlackColor),
                            ),
                            Text(AppStrings.signUp,
                              style: getRegularStyle(size: AppSize.s12,color: ColorManager.primary),
                            ),
                          ],
                        ),
                      ),

                      const EnglishLangRow(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
