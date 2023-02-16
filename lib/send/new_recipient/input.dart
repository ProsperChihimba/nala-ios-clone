import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class RecordInput extends StatefulWidget {
  final String header;
  const RecordInput({super.key, required this.header});

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
          child: Text(
            widget.header,
            style: Styles.normalText.copyWith(
              color: CupertinoColors.black.withOpacity(0.55),
              fontSize: AppLayout.getHeight(13),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Gap(AppLayout.getHeight(19)),
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
