import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/send/recipients/search_bar.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class RecipientsPage extends StatefulWidget {
  const RecipientsPage({super.key});

  @override
  State<RecipientsPage> createState() => _RecipientsPageState();
}

class _RecipientsPageState extends State<RecipientsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            //
            SearchBar(),

            //
            Gap(AppLayout.getHeight(20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  numberSelection(CupertinoIcons.house_alt_fill,
                      "  Bank account - 1", true),
                  numberSelection(CupertinoIcons.device_phone_portrait,
                      "  Mobile money - 0", false),
                  numberSelection(CupertinoIcons.bag, "  Buy goods - 0", false),
                  numberSelection(
                      CupertinoIcons.square_list, "  Pay bill - 0", false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// selection
Widget numberSelection(IconData icon, text, selected) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: AppLayout.getWidth(10),
      vertical: AppLayout.getHeight(7),
    ),
    margin: EdgeInsets.only(left: AppLayout.getWidth(10)),
    decoration: BoxDecoration(
      color: selected == true
          ? Styles.blueColor
          : CupertinoColors.systemGrey4.withOpacity(0.6),
      borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
    ),
    child: Row(
      //
      children: [
        // icon
        Icon(
          CupertinoIcons.house_alt,
          size: AppLayout.getHeight(15),
          color: selected == true ? CupertinoColors.white : Styles.blueColor,
        ),

        // text
        Text(
          "  Bank accounts - 1",
          style: Styles.normalText.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: AppLayout.getHeight(13),
            color: selected == true ? CupertinoColors.white : Styles.blueColor,
          ),
        )
      ],
    ),
  );
}
