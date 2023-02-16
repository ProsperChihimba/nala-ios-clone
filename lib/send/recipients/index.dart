import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/send/index.dart';
import 'package:nala_clon/send/new_recipient/index.dart';
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
            const SearchBar(),

            //
            Gap(AppLayout.getHeight(20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: AppLayout.getWidth(10)),
                    child: numberSelection(
                      CupertinoIcons.house_alt_fill,
                      "  Bank account - 1",
                      true,
                    ),
                  ),
                  numberSelection(
                    CupertinoIcons.device_phone_portrait,
                    "  Mobile money - 0",
                    false,
                  ),
                  numberSelection(
                    CupertinoIcons.bag,
                    "  Buy goods - 0",
                    false,
                  ),
                  numberSelection(
                    CupertinoIcons.square_list,
                    "  Pay bill - 0",
                    false,
                  ),
                ],
              ),
            ),

            //
            Gap(AppLayout.getHeight(20)),
            Padding(
              padding: EdgeInsets.only(left: AppLayout.getWidth(10)),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (BuildContext context) {
                        return const NewRecipient();
                      },
                    ),
                  );
                },
                child: sendOption(
                  CupertinoIcons.house_alt,
                  "Add a bank recipient",
                  "To make bank transfers",
                  false,
                ),
              ),
            )
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
          icon,
          size: AppLayout.getHeight(15),
          color: selected == true ? CupertinoColors.white : Styles.blueColor,
        ),

        // text
        Text(
          text,
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
