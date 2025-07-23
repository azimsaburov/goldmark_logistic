import 'package:flutter/material.dart';
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
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      body: SafeArea(
        child: Row(
          children: [
            NavigationMenu(),
            Expanded(child: Center(child: Text('Content'))),
          ],
        ),
      ),
    );
  }
}
