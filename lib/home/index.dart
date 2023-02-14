import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nala_clon/utils/app_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // cards list view
        Gap(AppLayout.getHeight(20)),

        // header
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
          ),
          //
          child: Row(
            children: [
              // text
              Text(
                "Good morning, Proc",
              ),

              // image
            ],
          ),
        )
      ],
    );
  }
}
