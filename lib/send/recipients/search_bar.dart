import 'package:flutter/cupertino.dart';
import 'package:nala_clon/utils/app_layout.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey5.withOpacity(0.8),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(13)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(5),
          vertical: AppLayout.getHeight(0),
        ),
        child: Row(
          children: const [
            Icon(
              CupertinoIcons.search,
              color: Color.fromRGBO(128, 128, 128, 1),
            ),
            Expanded(
              child: CupertinoTextField(
                decoration: null,
              ),
            ),
            // GestureDetector(
            //   child: const Icon(
            //     CupertinoIcons.clear_thick_circled,
            //     // color: Styles.searchIconColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
