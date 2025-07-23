import 'package:flutter/material.dart';
import 'package:goldmark_logistic/presentation/home/ui/widgets/navigation_tile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      child: Column(
        spacing: 16,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GOLDMARK\nLOGISTIC', // поставь иконку с фигмы
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
              ],
            ),
          ),
          NavigationTile(
            icon: Icon(Icons.star),
            onTap: () {},
            title: 'Груз',
            index: 1,
            onIconPressed: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          NavigationTile(
            icon: Icon(Icons.star),
            onTap: () {},
            title: 'На Складе в Китае',
            index: 1,
          ),
          NavigationTile(
            icon: Icon(Icons.star),
            onTap: () {},
            title: 'Сортировка',
            index: 1,
          ),
          NavigationTile(
            icon: Icon(Icons.star),
            onTap: () {},
            title: 'Отправки',
            index: 1,
          ),
          NavigationTile(
            icon: Icon(Icons.star),
            onTap: () {},
            title: 'Посылки',
            index: 1,
             onIconPressed: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          NavigationTile(
            icon: Icon(Icons.star),
            onTap: () {},
            title: 'Выход',
            index: 1,
          ),
        ],
      ),
    );
  }
}
