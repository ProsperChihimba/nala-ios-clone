import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/send/tag/input.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
          child: ListView(
            children: [
              Gap(AppLayout.getHeight(20)),

              //
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  CupertinoIcons.clear,
                  color: CupertinoColors.black.withOpacity(0.55),
                ),
              ),

              //
              Gap(AppLayout.getHeight(20)),
              Text(
                "Authorize Transaction",
                textAlign: TextAlign.center,
                style: Styles.normalText.copyWith(
                  color: Styles.blueColor,
                  fontSize: AppLayout.getHeight(19),
                  fontWeight: FontWeight.w600,
                ),
              ),

              //
              Text(
                "Nala transfer",
                textAlign: TextAlign.center,
                style: Styles.normalText.copyWith(
                  color: CupertinoColors.black.withOpacity(0.55),
                  fontSize: AppLayout.getHeight(12),
                ),
              ),

              //
              Gap(AppLayout.getHeight(15)),
              Text(
                "\$ 10,000.00",
                textAlign: TextAlign.center,
                style: Styles.normalText.copyWith(
                  color: CupertinoColors.black,
                  fontSize: AppLayout.getHeight(25),
                  fontWeight: FontWeight.bold,
                ),
              ),

              //
              Gap(AppLayout.getHeight(30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Icon(
                    CupertinoIcons.person_alt_circle_fill,
                    color: Styles.blueColor,
                  ),
                  Gap(AppLayout.getWidth(10)),
                  //
                  Text(
                    "Prosper",
                    style: Styles.normalText.copyWith(
                      color: CupertinoColors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),

              // save as bene
              Gap(AppLayout.getHeight(20)),
              Container(
                decoration: BoxDecoration(
                  color: Styles.blueColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(5)),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(13),
                ),

                //
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    Text(
                      "Save as beneficiary",
                      style: Styles.normalText.copyWith(
                        color: CupertinoColors.black.withOpacity(0.55),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    //
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: AppLayout.getWidth(2),
                          color: Styles.blueColor,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: SizedBox(
                        width: AppLayout.getHeight(13),
                        height: AppLayout.getHeight(13),
                      ),
                    ),
                  ],
                ),
              ),

              // input
              Gap(AppLayout.getHeight(30)),
              const TagInput(
                header: "Authorize with 4-digit PIN",
                amount: "1234",
              )
            ],
          ),
        ),
      ),
    );
  }
}
