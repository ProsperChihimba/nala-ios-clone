import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/home/rates.dart';
import 'package:nala_clon/sections/index.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class ActivitiesSection extends StatefulWidget {
  const ActivitiesSection({super.key});

  @override
  State<ActivitiesSection> createState() => _ActivitiesSectionState();
}

class _ActivitiesSectionState extends State<ActivitiesSection> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: size.height * 0.56866,

      // decorations
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            AppLayout.getHeight(15),
          ),
          topRight: Radius.circular(
            AppLayout.getHeight(15),
          ),
        ),
      ),

      //
      child: Column(
        children: [
          //
          Gap(AppLayout.getHeight(15)),

          // line
          const GreyLine(
            color: CupertinoColors.systemGrey5,
          ),

          // rates
          Gap(AppLayout.getHeight(20)),
          const RatesSection(),

          Gap(AppLayout.getHeight(30)),
          // activity search
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Activity",
                  style: Styles.normalText.copyWith(
                    color: CupertinoColors.black.withOpacity(0.55),
                    fontSize: AppLayout.getHeight(19),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  CupertinoIcons.search,
                  color: CupertinoColors.black.withOpacity(0.55),
                )
              ],
            ),
          ),

          // transactions
          Gap(AppLayout.getHeight(20)),
          Image(
            image: const AssetImage("assets/tr.png"),
            width: AppLayout.getWidth(280),
            height: AppLayout.getHeight(280),
          )
        ],
      ),
    );
  }
}
