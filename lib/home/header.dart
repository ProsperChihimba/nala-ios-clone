import 'package:flutter/cupertino.dart';
import 'package:nala_clon/utils/app_layout.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(20),
      ),
      //
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // text
          const Text(
            "Good morning, Proc",
          ),

          // image
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: AppLayout.getWidth(2),
                color: const Color(0xFFffffff),
              ),
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(50),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              child: Image(
                image: const AssetImage("assets/profile.png"),
                width: AppLayout.getWidth(40),
              ),
            ),
          )
        ],
      ),
    );
  }
}
