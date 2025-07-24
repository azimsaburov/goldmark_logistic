import 'package:flutter/material.dart';
import 'package:goldmark_logistic/constants/colors_const.dart';
import 'package:goldmark_logistic/presentation/home/ui/widgets/navigation_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.backgroundColor,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigationMenu(),
            Expanded(child: Center(child: Text('Content'))),
          ],
        ),
      ),
    );
  }
}
