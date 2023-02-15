import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/home/activities.dart';
import 'package:nala_clon/home/card.dart';
import 'package:nala_clon/home/header.dart';
import 'package:nala_clon/utils/app_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
