import 'package:flutter/material.dart';

class NavigationTile extends StatelessWidget {
  final int index;
  final Icon icon;
  final String title;
  final VoidCallback onTap;
  final Widget? onIconPressed;

  const NavigationTile({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
    required this.index,
    this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(30),
        color: const Color.fromARGB(230, 255, 255, 255),
        child: Row(
          children: [
            icon,
            SizedBox(width: 12),
            Expanded(child: Text(title)),
            if(onIconPressed != null) onIconPressed!,
          ],
        ),
      ),
    );
  }
}
