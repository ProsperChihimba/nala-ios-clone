import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/send/new_recipient/input.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class NewRecipient extends StatefulWidget {
  const NewRecipient({super.key});

  @override
  State<NewRecipient> createState() => _NewRecipientState();
}

class _NewRecipientState extends State<NewRecipient> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigation bar
      navigationBar: CupertinoNavigationBar(
        border: Border.all(color: CupertinoColors.white),
        backgroundColor: CupertinoColors.white,
        //
        leading: Icon(
          CupertinoIcons.back,
          color: CupertinoColors.black.withOpacity(0.65),
        ),

        //
        middle: Text(
          'Create new recipient',
          style: Styles.normalText.copyWith(
            color: CupertinoColors.black.withOpacity(0.6),
            fontSize: AppLayout.getHeight(17),
          ),
        ),
      ),

      //
      child: ListView(
        children: [
          //
          Gap(AppLayout.getHeight(20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
            child: CupertinoSlidingSegmentedControl<int>(
              backgroundColor: CupertinoColors.systemGrey5.withOpacity(0.5),
              groupValue: _selectedSegment,
              onValueChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedSegment = value;
                  });
                }
              },
              children: <int, Widget>{
                0: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(6),
                  ),
                  child: Text(
                    'Individual',
                    style: Styles.normalText.copyWith(
                      color: _selectedSegment == 0
                          ? Styles.blueColor
                          : CupertinoColors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                1: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(6),
                  ),
                  child: Text(
                    'Business',
                    style: Styles.normalText.copyWith(
                      color: _selectedSegment == 1
                          ? Styles.blueColor
                          : CupertinoColors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              },
            ),
          ),

          // inputs
          RecordInput(
            header: "Company name",
          ),
        ],
      ),
    );
  }
}
