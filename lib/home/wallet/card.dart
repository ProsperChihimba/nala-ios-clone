import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class WalletCard extends StatefulWidget {
  const WalletCard({super.key});

  @override
  State<WalletCard> createState() => _WalletCardState();
}

class _WalletCardState extends State<WalletCard> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.36,
      height: AppLayout.getHeight(140),
      padding: EdgeInsets.all(AppLayout.getWidth(15)),
      margin: EdgeInsets.only(right: AppLayout.getWidth(20)),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
      ),

      //
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image british
          ClipRRect(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(100),
            ),
            child: Image(
              image: const AssetImage("assets/bri.png"),
              width: AppLayout.getWidth(40),
              height: AppLayout.getHeight(40),
            ),
          ),

          Gap(AppLayout.getHeight(16)),

          // price
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "10.087",
                style: Styles.normalText.copyWith(
                  color: CupertinoColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                ".64",
                style: Styles.normalText.copyWith(
                  color: CupertinoColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: AppLayout.getHeight(10),
                ),
              ),
            ],
          ),

          // type
          Gap(AppLayout.getHeight(5)),
          Text(
            "GBP wallet",
            style: Styles.normalText.copyWith(
              color: CupertinoColors.black.withOpacity(0.5),
            ),
          ),

          //
        ],
      ),
    );
  }
}
