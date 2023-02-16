import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/sections/index.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

Widget modalSections(BuildContext context) {
  return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Column(
            children: [
              // header
              headerCurrency(),

              // items
              singleItem("kenya.png", "Kenyan Shillings (KES)", false),
              Gap(AppLayout.getHeight(25)),
              singleItem("uganda.png", "Uganda Shillings (UGX)", false),
              Gap(AppLayout.getHeight(25)),
              singleItem("tz.png", "Tanzanian Shillings (TZS)", true),
              Gap(AppLayout.getHeight(25)),
              singleItem("ghana.png", "Ghananian Cedi (GHS)", false),
              Gap(AppLayout.getHeight(25)),
              singleItem("rwanda.png", "Rwanda Franc (RWF)", false),
              Gap(AppLayout.getHeight(8)),
            ],
          ),
        )
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
      ));
}

Widget headerCurrency() {
  return Column(
    children: [
      //
      const GreyLine(),
      Gap(AppLayout.getHeight(20)),
      Padding(
        padding: EdgeInsets.only(left: AppLayout.getWidth(10)),
        child: Row(
          children: [
            Text(
              'Select currency',
              textAlign: TextAlign.left,
              style: Styles.normalText.copyWith(
                color: CupertinoColors.black.withOpacity(0.55),
                fontWeight: FontWeight.w600,
                fontSize: AppLayout.getHeight(19),
              ),
            ),
          ],
        ),
      ),
      Gap(AppLayout.getHeight(25)),
    ],
  );
}

// single item
Widget singleItem(image, shiling, selected) {
  return Container(
    margin: EdgeInsets.only(
      left: AppLayout.getWidth(10),
    ),
    child: Row(
      children: [
        //
        selected == true
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: AppLayout.getWidth(2),
                    color: Styles.blueColor,
                  ),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                ),

                //
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: AppLayout.getWidth(2.5),
                      color: CupertinoColors.white,
                    ),
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: AppLayout.getWidth(4),
                        color: Styles.blueColor,
                      ),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(20)),
                    ),
                  ),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: AppLayout.getHeight(2),
                    color: CupertinoColors.black.withOpacity(0.55),
                  ),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: AppLayout.getHeight(6),
                      color: CupertinoColors.white,
                    ),
                    borderRadius: BorderRadius.circular(
                      AppLayout.getWidth(20),
                    ),
                  ),
                ),
              ),

        // image
        Gap(AppLayout.getWidth(20)),
        Image(
          image: AssetImage("assets/$image"),
          width: AppLayout.getWidth(15),
        ),

        //text
        Gap(AppLayout.getWidth(10)),
        Text(
          shiling,
          style: Styles.normalText.copyWith(
            color: selected == false
                ? CupertinoColors.black.withOpacity(0.55)
                : Styles.blueColor,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ),
  );
}
