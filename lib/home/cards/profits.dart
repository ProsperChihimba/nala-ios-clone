import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class SavingsProfit extends StatelessWidget {
  const SavingsProfit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(18),
      ),
      child: Column(
        children: [
          const Profits(
            description:
                "Deposit & pull out your Funds at any time with no fees",
            header: "No Lockup Periods",
            profitIcon: CupertinoIcons.lock,
          ),

          // Second row
          Gap(AppLayout.getHeight(30)),
          const Profits(
            description: "Pay up to 100+ companies, from Netflix to Dstv",
            header: "Hundreds of companies",
            profitIcon: CupertinoIcons.money_dollar,
          ),

          // Third row
          Gap(AppLayout.getHeight(30)),
          const Profits(
            description: "Deposit now with as little as 1 USD",
            header: "Easy Transactions",
            profitIcon: CupertinoIcons.add_circled,
          ),
        ],
      ),
    );
  }
}

class Profits extends StatelessWidget {
  final String header;
  final String description;
  final IconData profitIcon;

  const Profits({
    super.key,
    required this.description,
    required this.header,
    required this.profitIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          profitIcon,
          color: Styles.blueColor,
        ),
        Gap(AppLayout.getWidth(16)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              style: Styles.normalText.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: AppLayout.getHeight(15),
                color: CupertinoColors.black.withOpacity(0.8),
              ),
            ),
            Text(
              description,
              style: Styles.normalText.copyWith(
                fontSize: AppLayout.getHeight(12),
                color: CupertinoColors.black.withOpacity(0.55),
              ),
            ),
          ],
        )
      ],
    );
  }
}
