import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

Widget modalSections(BuildContext context) {
  return CupertinoActionSheet(
      actions: [
        // headerCurrency(),
        singleItem("kenya.png", "Kenyan Shillings (KES)", false),
        singleItem("uganda.png", "Uganda Shillings (UGX)", false),
        singleItem("tz.png", "Tanzanian Shillings (TZS)", true),
        singleItem("ghana.png", "Ghananian Cedi (GHS)", false),
        singleItem("rwanda.png", "Rwanda Franc (RWF)", false),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
      ));
}

// single item
Widget singleItem(image, shiling, selected) {
  return Container(
    padding: EdgeInsets.only(
      left: AppLayout.getWidth(10),
      top: AppLayout.getHeight(3),
      bottom: AppLayout.getHeight(3),
    ),
    color: CupertinoColors.white,
    child: CupertinoActionSheetAction(
      onPressed: () {},
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
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(20)),
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
              color: CupertinoColors.black.withOpacity(0.55),
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    ),
  );
}
