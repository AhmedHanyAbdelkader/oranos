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

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              const Spacer(),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: AppSize.s60,),
                      SvgPicture.asset(ImageAssets.pathImage,color: ColorManager.primary),
                    ],
                  ),
                  RichText(
                    text:  TextSpan(
                      text: AppStrings.hiMyNameIs,
                      style: getRegularStyle(size:FontSize.s19 ,color: ColorManager.pureBlackColor),
                      children: [
                        TextSpan(
                            text: '${AppStrings.oranobot}\n',
                            style: getBoldStyle(size: FontSize.s19,color: ColorManager.pureBlackColor),
                            children: [
                              TextSpan(
                                  text: '${AppStrings.iwillAlwaysBeThereToHelp}\n${AppStrings.andAssistYou}',
                                  style:getRegularStyle(size:FontSize.s19 ,color: ColorManager.pureBlackColor),
                                  children: [
                                    TextSpan(
                                      text: '\n\n${AppStrings.sayStartTogotoNext}',
                                      style: getRegularStyle(size:FontSize.s19 ,color: ColorManager.pureBlackColor),
                                    )
                                  ]
                              )
                            ]
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset(ImageAssets.bot),
              Padding(
                padding: const EdgeInsets.all(AppSize.s10),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context,Routes.chatRoute);
                    },
                  style: ElevatedButton.styleFrom(
                    primary: ColorManager.primary,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s6),
                    ),
                  ),
                    child: Text(AppStrings.next,style: getMediumStyle(size: AppSize.s18,color: ColorManager.pureWhite),),
                ),
              ),
              const EnglishLangRow(),
            ],
          ),
        ),
      ),
    );
  }
}


