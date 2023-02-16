import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/sections/index.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class SendPage extends StatefulWidget {
  const SendPage({super.key});

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      //
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Column(
            children: [
              // header
              header(),

              // items
              newFeature(context),
            ],
          ),
        )
      ],

      //
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
      ),
    );
  }
}

// header
Widget header() {
  return Column(
    children: [
      //
      const GreyLine(
        color: CupertinoColors.systemGrey4,
      ),
      Gap(AppLayout.getHeight(20)),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select an option',
              textAlign: TextAlign.left,
              style: Styles.normalText.copyWith(
                color: CupertinoColors.black.withOpacity(0.55),
                fontWeight: FontWeight.w600,
                fontSize: AppLayout.getHeight(19),
              ),
            ),

            //
            Row(
              children: [
                // flag
                Image(
                  image: const AssetImage("assets/tz.png"),
                  width: AppLayout.getWidth(12),
                ),

                // country
                Gap(AppLayout.getWidth(6)),
                Text(
                  "Tanzania",
                  style: Styles.normalText.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Styles.blueColor,
                    fontSize: AppLayout.getHeight(12),
                  ),
                ),

                // icon
                Gap(AppLayout.getWidth(6)),
                Icon(
                  CupertinoIcons.chevron_down,
                  color: Styles.blueColor,
                  size: AppLayout.getHeight(17),
                )
              ],
            ),
          ],
        ),
      ),
      Gap(AppLayout.getHeight(25)),
    ],
  );
}

// new feature
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
