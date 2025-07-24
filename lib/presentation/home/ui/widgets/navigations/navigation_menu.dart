import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldmark_logistic/constants/colors_const.dart';
import 'package:goldmark_logistic/constants/icon_path.dart';
import 'package:goldmark_logistic/constants/images_path.dart';
import 'package:goldmark_logistic/presentation/home/ui/widgets/navigations/navigation_tile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
      BoxShadow(
        color: Color.fromARGB(30, 0, 0, 0),
        blurRadius: 10,
      ),
    ],
      ),
      width: 300,
      height: 540,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Row(
              children: [
                Image.asset(ImagesPaths.logo, width: 210),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.lightGreen,
                  ),
                ),
              ],
            ),
          ),
          //тудушка сделать градиетную метку
          NavigationTile(
            color: ColorsConst.backgroundColor,
            icon: SvgPicture.asset(IconPaths.cargos),
            onTap: () {},
            title: 'Груз',
            index: 1,
            onIconPressed: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          NavigationTile(
            color: ColorsConst.backgroundColor,
            icon: SvgPicture.asset(IconPaths.cargos),
            onTap: () {},
            title: 'На Складе в Китае',
            index: 2,
          ),
          NavigationTile(
            color: ColorsConst.backgroundColor,
            icon: SvgPicture.asset(IconPaths.dispatches),
            onTap: () {},
            title: 'Сортировка',
            index: 3,
          ),
          NavigationTile(
            color: ColorsConst.backgroundColor,
            icon: SvgPicture.asset(IconPaths.sort),
            onTap: () {},
            title: 'Отправки',
            index: 4,
          ),
          NavigationTile(
            icon: SvgPicture.asset(IconPaths.percels),
            onTap: () {},
            title: 'Посылки',
            index: 5,
            onIconPressed: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          Divider(),
          NavigationTile(
            icon: SvgPicture.asset(IconPaths.goOut),
            onTap: () {},
            title: 'Выход',
            index: 6,
          ),
        ],
      ),
    );
  }
}
