import 'package:event_planning/utils/app_color.dart';
import 'package:event_planning/utils/app_styles.dart';
import 'package:event_planning/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          SizedBox(
            width: double.infinity,
            height: height * 0.6,
            child: Image.asset(
              AppAssets.onbordinglight1,
              fit: BoxFit.contain,
            ),
          ),
          // SizedBox(height: height * 0.01),
          Text(
            AppLocalizations.of(context)!.experience,
            style: AppStyles.inter20prime,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: height * 0.01),
          Text(
            AppLocalizations.of(context)!.choose,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.language,
                  style: AppStyles.inter600prime),
              //to do the change language
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.theme,
                  style: AppStyles.inter600prime),
              //to do the change theam
            ],
          ),
          SizedBox(height: height * 0.03),
          ElevatedButton(
            //go to the introdction screen1
            onPressed: () {},
            child: Text(AppLocalizations.of(context)!.start),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(width, height * 0.06),
                backgroundColor: AppColor.primeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
          )
        ],
      ),
    );
  }
}
