import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class RatesSection extends StatefulWidget {
  const RatesSection({super.key});

  @override
  State<RatesSection> createState() => _RatesSectionState();
}

class _RatesSectionState extends State<RatesSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(10),
        vertical: AppLayout.getHeight(13),
      ),
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),

      //
      decoration: BoxDecoration(
        color: Styles.blueColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(10),
        ),
      ),

      //
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // first row
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // first column for rate from flag and time
              Row(
                children: [
                  // flag
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(100),
                    ),
                    child: Image(
                      image: const AssetImage("assets/ame.png"),
                      width: AppLayout.getWidth(22),
                      height: AppLayout.getHeight(22),
                    ),
                  ),

                  // rate time
                  Gap(AppLayout.getWidth(10)),
                  Text(
                    "Rate as of 23:15 EAT",
                    style: Styles.normalText.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),

              // rate value
              Gap(AppLayout.getHeight(15)),
              Text(
                "\$1 = 2,319.51 TZS",
                style: Styles.normalText.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),

          // second column
          Row(
            children: [
              // flag
              Image(
                image: const AssetImage("assets/tz.png"),
                width: AppLayout.getWidth(17),
              ),

              // country
              Gap(AppLayout.getWidth(6)),
              Text(
                "TZS",
                style: Styles.normalText.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: AppLayout.getWidth(18),
                ),
              ),

              // icon
              Gap(AppLayout.getWidth(6)),
              const Icon(
                CupertinoIcons.chevron_down,
                color: CupertinoColors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
