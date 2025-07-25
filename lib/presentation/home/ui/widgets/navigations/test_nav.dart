import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldmark_logistic/constants/icon_path.dart';
import 'package:goldmark_logistic/constants/images_path.dart';
import 'package:goldmark_logistic/presentation/home/ui/widgets/navigations/navigation_tile.dart';

class TestNav extends StatelessWidget {
  const TestNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Color.fromARGB(30, 0, 0, 0), blurRadius: 10),
          ],
        ),
        width: 300,
        //height: 540,
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
            ExpansionTile(
              title: Text('Грузы'),
              leading: SvgPicture.asset(IconPaths.cargos),
              trailing: Icon(Icons.arrow_back_ios_new),
              children: <Widget>[
                ListTile(
                  title: Text('На складе в Китае'),
                  leading: SvgPicture.asset(IconPaths.cargos),
                  onTap: () {},
                ),
                ListTile(title: Text('Сортровка'), onTap: () {}, leading: SvgPicture.asset(IconPaths.sort),),
                ListTile(title: Text('Отправка'), onTap: () {}, leading: SvgPicture.asset(IconPaths.dispatches),),
              ],
            ),
            ExpansionTile(
              title: Text('Посылки'),
              leading: SvgPicture.asset(IconPaths.percels),
              trailing: Icon(Icons.arrow_back_ios_new),
              children: <Widget>[
                ListTile(
                  title: Text('Посылка из США'),
                  onTap: () {},
                ),
                ListTile(title: Text('Сортровка'), onTap: () {}),
                ListTile(title: Text('Отправка'), onTap: () {}),
              ],
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
      ),
    );
  }
}
