import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
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
    return ListView(
      children: [
        // cards list view
        Gap(AppLayout.getHeight(20)),

        // header
        const HeaderSection(),

        //
        Gap(AppLayout.getHeight(15)),

        // wallet card
        const WalletCard(),
      ],
    );
  }
}
