import 'package:flutter/material.dart';

class NavigationTile extends StatelessWidget {
  final int index;
  final Widget icon;
  final String title;
  final VoidCallback onTap;
  final Widget? onIconPressed;
  final Color? color;

  const NavigationTile({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
    required this.index,
    this.onIconPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        color: color,
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
