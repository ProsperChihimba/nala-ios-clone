import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/home/cards/button.dart';
import 'package:nala_clon/home/cards/profits.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment(0.9, -0.4),
          colors: [
            Color.fromARGB(255, 161, 193, 248),
            Color.fromARGB(255, 244, 215, 245),
            Colors.white,
          ],
        ),
      ),

      // body
      child: SafeArea(
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(35)),

            // Header image
            Image(
              image: const AssetImage("assets/card.png"),
              height: AppLayout.getHeight(180),
              width: AppLayout.getWidth(180),
            ),

            //saving text
            Gap(AppLayout.getHeight(25)),
            Text(
              "Nala Virtual Cards",
              textAlign: TextAlign.center,
              style: Styles.normalText.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: AppLayout.getHeight(19),
                color: Colors.black,
              ),
            ),

            // Profits section
            Gap(AppLayout.getHeight(35)),
            const SavingsProfit(),

            // Start saving button
            Gap(AppLayout.getHeight(50)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(18),
              ),
              child: const GreenButton(
                title: "Start Saving",
                size: 20,
                hasIcon: false,
              ),
            ),

            // Swipe left
            Gap(AppLayout.getHeight(35)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(1),
                  ),
                  width: AppLayout.getWidth(60),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00008b),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    CupertinoIcons.hand_point_left_fill,
                    color: Colors.white,
                    size: AppLayout.getHeight(24),
                  ),
                ),
                Gap(AppLayout.getWidth(20)),
                Text(
                  "Swipe left to Go Back",
                  style: Styles.normalText.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
