import 'package:flutter/cupertino.dart';
import 'package:nala_clon/utils/app_layout.dart';

class GreyLine extends StatelessWidget {
  final Color color;
  const GreyLine({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Center(
      child: Container(
        width: size.width * 0.25,
        height: AppLayout.getHeight(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(10),
          ),
        ),
      ),
    );
  }
}
