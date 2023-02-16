import 'package:flutter/cupertino.dart';
import 'package:nala_clon/send/recipients/search_bar.dart';

class RecipientsPage extends StatefulWidget {
  const RecipientsPage({super.key});

  @override
  State<RecipientsPage> createState() => _RecipientsPageState();
}

class _RecipientsPageState extends State<RecipientsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            //
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
