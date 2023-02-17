import 'package:flutter/cupertino.dart';
import 'package:nala_clon/home/cards/index.dart';
import 'package:nala_clon/home/wallet/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const [
        WalletPage(),
        CardPage(),
      ],
    );
  }
}
