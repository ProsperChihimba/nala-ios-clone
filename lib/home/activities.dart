import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/sections/index.dart';
import 'package:nala_clon/utils/app_layout.dart';

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

            //
            const GreyLine(),
          ],
        ));
  }
}
