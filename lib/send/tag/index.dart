import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/send/tag/confirm.dart';
import 'package:nala_clon/send/tag/input.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class NalaTag extends StatefulWidget {
  const NalaTag({super.key});

  @override
  State<NalaTag> createState() => _NalaTagState();
}

class _NalaTagState extends State<NalaTag> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigation bar
      navigationBar: CupertinoNavigationBar(
        //
        leading: Icon(
          CupertinoIcons.back,
          color: CupertinoColors.black.withOpacity(0.65),
        ),

        //
        trailing: Text(
          'Nala Transfer',
          style: Styles.normalText.copyWith(
            color: CupertinoColors.black.withOpacity(0.6),
            fontSize: AppLayout.getHeight(16),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
        child: ListView(
          children: [
            //
            Gap(AppLayout.getHeight(19)),

            //
            Text(
              "Who are you transferring to?",
              style: Styles.normalText.copyWith(
                color: Styles.blueColor,
                fontSize: AppLayout.getHeight(19),
                fontWeight: FontWeight.w600,
              ),
            ),

            // desc
            Gap(AppLayout.getHeight(3)),
            Text(
              "Enter recipient's Nala Tag or ID",
              style: Styles.normalText.copyWith(
                color: CupertinoColors.black.withOpacity(0.55),
                fontSize: AppLayout.getHeight(13),
              ),
            ),

            // inputs
            Gap(AppLayout.getHeight(10)),
            const TagInput(
              header: "Nala Tag/ID",
              amount: "@proc",
            ),

            // benefici
            Gap(AppLayout.getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Select from beneficiaries",
                  style: Styles.normalText.copyWith(
                    color: Styles.blueColor,
                    fontWeight: FontWeight.w600,
                    fontSize: AppLayout.getHeight(13),
                  ),
                ),

                // icon
                Gap(AppLayout.getWidth(7)),
                Icon(
                  CupertinoIcons.chevron_right_circle,
                  color: Styles.blueColor,
                  size: AppLayout.getHeight(20),
                )
              ],
            ),

            // a,ount
            Gap(AppLayout.getHeight(10)),
            const TagInput(
              header: "Amount",
              amount: "0",
            ),

            // desc
            Gap(AppLayout.getHeight(10)),
            const TagInput(
              header: "Description (optional)",
              amount: "Enter short description",
            ),

            //
            Gap(AppLayout.getHeight(100)),
            CupertinoButton(
              color: Styles.blueColor,
              child: Text("Continue"),
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (BuildContext context) {
                      return const ConfirmPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
