import 'package:flutter/cupertino.dart';
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
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(10),
        vertical: AppLayout.getHeight(13),
      ),
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      decoration: BoxDecoration(
        color: Styles.blueColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(20),
        ),
      ),
    );
  }
}
