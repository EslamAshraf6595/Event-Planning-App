import 'package:event_planning/ui/home/provider/language_provider.dart';
import 'package:event_planning/utils/app_color.dart';
import 'package:event_planning/utils/app_styles.dart';

import 'package:event_planning/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'language_Bottom_sheet.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primeColordark,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: EdgeInsets.zero,
          width: width,
          color: AppColor.primeColordark,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.015),
                height: height * 0.2,
                width: width * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    image: DecorationImage(
                        image: AssetImage(AppAssets.profileImage))),
              ),
              SizedBox(
                width: width * 0.025,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Safwat',
                    style: AppStyles.inter24white,
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Text(
                    "JohnSafwat@gamil.com",
                    style: AppStyles.inter16white,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
          child: Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet();
          },
          child: Container(
            //arabic
            margin: EdgeInsets.symmetric(horizontal: width * 0.04),
            width: width,
            height: height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColor.primeColordark, width: 2)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      languageProvider.currentLanguage == 'en'
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: AppColor.primeColordark,
                    )
                  ]),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
          child: Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        InkWell(
          onTap: () {
            // showThemeBottomSheet();
            // setState(() {});
          },
          child: Container(
            //theme
            margin: EdgeInsets.symmetric(horizontal: width * 0.04),
            width: width,
            height: height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColor.primeColordark, width: 2)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.light,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: AppColor.primeColordark,
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageButtomShet());
  }

  // void showThemeBottomSheet() {
  //   showModalBottomSheet(
  //       context: context, builder: (context) => ThemeButtomShet());
  // }
}
