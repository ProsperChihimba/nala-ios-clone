import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/home/wallet/activities.dart';
import 'package:nala_clon/home/wallet/card.dart';
import 'package:nala_clon/home/wallet/header.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.blueColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // cards list view
            Gap(AppLayout.getHeight(20)),

            // header
            const HeaderSection(),

            //
            Gap(AppLayout.getHeight(15)),

            // wallet card
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: AppLayout.getWidth(17)),
                child: Row(
                  children: const [
                    WalletCard(),
                    WalletCard(),
                  ],
                ),
              ),
            ),

            // activities
            Gap(AppLayout.getHeight(20)),
            const ActivitiesSection(),
          ],
        ),
      ),
    );
  }
}
