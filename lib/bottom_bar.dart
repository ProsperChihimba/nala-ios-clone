import 'package:flutter/cupertino.dart';
import 'package:nala_clon/home/index.dart';
import 'package:nala_clon/mama_nala/index.dart';
import 'package:nala_clon/send/index.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:nala_clon/utils/app_styles.dart';

class BottomBarSection extends StatefulWidget {
  const BottomBarSection({super.key});

  @override
  State<BottomBarSection> createState() => _BottomBarSectionState();
}

class _BottomBarSectionState extends State<BottomBarSection> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: AppLayout.getHeight(70),
        iconSize: AppLayout.getHeight(22),
        activeColor: Styles.blueColor,

        //
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.arrow_up_circle_fill,
              color: Styles.blueColor,
              size: AppLayout.getHeight(40),
            ),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.creditcard_fill,
              color: Styles.blueColor,
              size: AppLayout.getHeight(35),
            ),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.question_circle),
            label: 'Mama NALA',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: HomePage(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: SendPage(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: MamaNala(),
              );
            });
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: MamaNala(),
              );
            });
            break;
        }
        return returnValue;
      },
    );
  }
}
