import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/sections/index.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

void showAlertDialog(BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      content: Column(
        children: [
          // line
          const GreyLine(
            color: CupertinoColors.systemGrey4,
          ),

          // image
          const Image(
            image: AssetImage("assets/shop.png"),
          ),

          // header
          Text(
            "⭐️ New features ⭐️",
            style: Styles.normalText.copyWith(
              color: CupertinoColors.black.withOpacity(0.55),
              fontWeight: FontWeight.w600,
            ),
          ),

          // desc
          Gap(AppLayout.getHeight(15)),
          Text(
            "Wo-hoo! You are one of our first users to try this out. Please let us know how your experience went",
            style: Styles.normalText.copyWith(
              color: CupertinoColors.black.withOpacity(0.4),
              fontSize: AppLayout.getHeight(13),
              fontWeight: FontWeight.w600,
            ),
          ),

          // button
          Gap(AppLayout.getHeight(30)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(10)),
            decoration: BoxDecoration(
              color: Styles.blueColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(5)),
            ),
            child: Center(
              child: Text(
                "Okay",
                style: Styles.normalText.copyWith(
                  color: Styles.blueColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
