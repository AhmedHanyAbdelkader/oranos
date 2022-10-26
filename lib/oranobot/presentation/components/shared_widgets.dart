import 'package:flutter/material.dart';
import 'package:oranos/oranobot/presentation/resources/assets_manager.dart';
import 'package:oranos/oranobot/presentation/resources/color_manager.dart';
import 'package:oranos/oranobot/presentation/resources/strings_manager.dart';
import 'package:oranos/oranobot/presentation/resources/styles_manager.dart';
import 'package:oranos/oranobot/presentation/resources/values_manager.dart';

class EnglishLangRow extends StatelessWidget {
  const EnglishLangRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(AppSize.s8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageAssets.netIcon,width: AppSize.s16, height: AppSize.s16,),
          const SizedBox(width: AppSize.s1_5,),
          Text(AppStrings.english,
            style: getRegularStyle(size: AppSize.s15,color: ColorManager.pureBlackColor),)
        ],
      ),
    );
  }
}
