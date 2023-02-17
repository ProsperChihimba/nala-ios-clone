import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/send/tag/confirm.dart';
import 'package:nala_clon/send/tag/input.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class CardName extends StatefulWidget {
  const CardName({super.key});

  @override
  State<CardName> createState() => _CardNameState();
}

class _CardNameState extends State<CardName> {
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
          'Nala virtual card',
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
              "Give your card a name",
              style: Styles.normalText.copyWith(
                color: Styles.blueColor,
                fontSize: AppLayout.getHeight(19),
                fontWeight: FontWeight.w600,
              ),
            ),

            // desc
            Gap(AppLayout.getHeight(3)),
            Text(
              "We understand that you may want cards for diffrent reasons",
              style: Styles.normalText.copyWith(
                color: CupertinoColors.black.withOpacity(0.55),
                fontSize: AppLayout.getHeight(13),
              ),
            ),

            // inputs
            Gap(AppLayout.getHeight(30)),
            const TagInput(
              header: "Card name",
              amount: "Proc",
            ),

            // benefici
            Gap(AppLayout.getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Select from wallet to deposit from",
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

            //
            Gap(AppLayout.getHeight(270)),
            CupertinoButton(
              color: Styles.blueColor,
              child: Text("Create"),
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
