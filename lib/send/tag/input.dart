import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class TagInput extends StatefulWidget {
  final String header;
  final String amount;
  const TagInput({super.key, required this.header, required this.amount});

  @override
  State<TagInput> createState() => _TagInputState();
}

class _TagInputState extends State<TagInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppLayout.getHeight(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.header,
            style: Styles.normalText.copyWith(
              color: CupertinoColors.black.withOpacity(0.55),
              fontSize: AppLayout.getHeight(13),
              fontWeight: FontWeight.w500,
            ),
          ),

          //
          Gap(AppLayout.getHeight(10)),
          //
          CupertinoTextField(
            placeholder: widget.amount,
            placeholderStyle: Styles.normalText.copyWith(
              color: CupertinoColors.systemGrey2,
              fontSize: AppLayout.getHeight(14),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(12),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: CupertinoColors.systemGrey2,
              ),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(5)),
            ),
          ),
        ],
      ),
    );
  }
}
