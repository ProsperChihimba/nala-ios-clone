import 'package:flutter/cupertino.dart';
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
      color: CupertinoColors.white,
      height: size.height * 0.5751,
    );
  }
}
