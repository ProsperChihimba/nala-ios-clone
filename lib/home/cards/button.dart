import 'package:flutter/cupertino.dart';
import 'package:nala_clon/home/cards/cardname/index.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class GreenButton extends StatelessWidget {
  final String title;
  final double size;
  final bool hasIcon;
  const GreenButton({
    super.key,
    required this.title,
    required this.size,
    required this.hasIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (BuildContext context) {
              return const CardName();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(size)),
        //
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Styles.blueColor.withOpacity(0.8),
              Styles.blueColor.withOpacity(0.3),
            ],
          ),
          borderRadius: BorderRadius.circular(30),
        ),

        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.normalText.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: AppLayout.getHeight(18),
          ),
        ),
      ),
    );
  }
}
