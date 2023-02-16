import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class RecordInput extends StatefulWidget {
  final String header;
  final bool hasIcon;
  const RecordInput({super.key, required this.header, required this.hasIcon});

  @override
  State<RecordInput> createState() => _RecordInputState();
}

class _RecordInputState extends State<RecordInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
            AppLayout.getWidth(20),
            AppLayout.getHeight(20),
            AppLayout.getWidth(20),
            AppLayout.getHeight(0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              Text(
                widget.header,
                style: Styles.normalText.copyWith(
                  color: CupertinoColors.black.withOpacity(0.55),
                  fontSize: AppLayout.getHeight(13),
                  fontWeight: FontWeight.w500,
                ),
              ),

              //
              widget.hasIcon == true
                  ? Icon(
                      CupertinoIcons.chevron_down,
                      color: Styles.blueColor,
                      size: AppLayout.getHeight(15),
                    )
                  : Container(),
            ],
          ),
        ),

        //
        Gap(AppLayout.getHeight(19)),
        //
        Padding(
          padding: EdgeInsets.only(
            right: AppLayout.getWidth(20),
            left: AppLayout.getWidth(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: AppLayout.getHeight(0.5),
                color: CupertinoColors.black.withOpacity(0.2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget countrySelection(BuildContext context) {
  final size = AppLayout.getSize(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Country",
          style: Styles.normalText.copyWith(
            color: CupertinoColors.black.withOpacity(0.55),
            fontSize: AppLayout.getHeight(13),
          ),
        ),
        Gap(AppLayout.getHeight(10)),
        //
        Row(
          children: [
            Image(
              image: const AssetImage("assets/tz.png"),
              width: AppLayout.getHeight(25),
            ),

            //
            Gap(AppLayout.getWidth(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                Text(
                  "Tanzania",
                  style: Styles.normalText.copyWith(
                    color: CupertinoColors.black.withOpacity(0.55),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Container(
                  width: size.width * 0.83,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: AppLayout.getHeight(0.5),
                      color: CupertinoColors.black.withOpacity(0.2),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
