import 'package:flutter/cupertino.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

Widget newFeature(BuildContext context) {
  final size = AppLayout.getSize(context);
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: AppLayout.getWidth(13),
      vertical: AppLayout.getHeight(13),
    ),

    //
    decoration: BoxDecoration(
      color: CupertinoColors.systemGrey5,
      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
    ),

    //
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // header
        Text(
          "⭐️ New features",
          style: Styles.normalText.copyWith(
            color: Styles.blueColor.withOpacity(0.8),
            fontWeight: FontWeight.w600,
            fontSize: AppLayout.getHeight(16),
          ),
        ),

        //
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            SizedBox(
              width: size.width * 0.80,
              child: Text(
                "Buy goods and Pay bill are in early access. We are still testing their relibility",
                textAlign: TextAlign.start,
                style: Styles.normalText.copyWith(
                  color: CupertinoColors.systemGrey,
                  fontSize: AppLayout.getHeight(12),
                ),
              ),
            ),

            //
            const Icon(
              CupertinoIcons.exclamationmark_circle,
              color: CupertinoColors.systemGrey,
            ),
          ],
        )
      ],
    ),
  );
}
