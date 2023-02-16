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
