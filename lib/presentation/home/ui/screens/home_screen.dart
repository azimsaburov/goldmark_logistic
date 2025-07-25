import 'package:flutter/material.dart';
import 'package:goldmark_logistic/constants/colors_const.dart';
import 'package:goldmark_logistic/presentation/home/ui/widgets/cargo/cargo_china.dart';
//import 'package:goldmark_logistic/presentation/home/ui/widgets/navigations/navigation_menu.dart';
import 'package:goldmark_logistic/presentation/home/ui/widgets/navigations/test_nav.dart';
import 'package:goldmark_logistic/presentation/home/ui/widgets/search/search.dart';

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
    //print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: ColorsConst.backgroundColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  color: ColorsConst.backgroundColor,
                  child: Column(
                    children: [
                      Container(
                        color: ColorsConst.primary,
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                //тудушка добавить табы на профиль
                                Text('Александр Прокопьев'),
                                Text(
                                  'Супер админ',
                                  style: TextStyle(color: ColorsConst.textGray),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            CircleAvatar(
                              backgroundColor: ColorsConst.avatar,
                              child: Text(
                                'AU',
                                style: TextStyle(color: ColorsConst.primary),
                              ),
                            ),
                            SizedBox(width: 30),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            SizedBox(width: 300),
                            Text(
                              'Грузы на складе в Китае',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Spacer(),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Добавить груз'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            SizedBox(width: 300),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Search(
                                    label: 'Ввeдите номер груза',
                                    onChanged: (text) {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            SizedBox(width: 300),
                            Expanded(child: CargoChina()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Positioned(child: NavigationMenu()),
              Positioned(top: 0, left: 0, child: TestNav()),
            ],
          ),
        ),
      ),
    );
  }
}
