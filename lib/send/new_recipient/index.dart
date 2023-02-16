import 'package:flutter/cupertino.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class NewRecipient extends StatefulWidget {
  const NewRecipient({super.key});

  @override
  State<NewRecipient> createState() => _NewRecipientState();
}

class _NewRecipientState extends State<NewRecipient> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
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
      child: SizedBox(),
    );
  }
}
