import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const SideMenu({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: Color(0xFFF8F9FB),
      child: Column(
        children: [
          const SizedBox(height: 40),
          // Логотип
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.local_shipping, color: Colors.green),
                const SizedBox(width: 8),
                Text(
                  'GOLDMARK\nLOGISTIC',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Меню
          _buildMenuItem(
            icon: Icons.inventory_2,
            label: 'Грузы',
            index: 0,
            selectedIndex: selectedIndex,
            onTap: onItemSelected,
          ),
          _buildMenuItem(
            icon: Icons.warehouse,
            label: 'На складе в Китае',
            index: 1,
            selectedIndex: selectedIndex,
            onTap: onItemSelected,
          ),
          _buildMenuItem(
            icon: Icons.sort,
            label: 'Сортировка',
            index: 2,
            selectedIndex: selectedIndex,
            onTap: onItemSelected,
          ),
          _buildMenuItem(
            icon: Icons.local_shipping_outlined,
            label: 'Отправки',
            index: 3,
            selectedIndex: selectedIndex,
            onTap: onItemSelected,
          ),
          _buildMenuItem(
            icon: Icons.home_work,
            label: 'Посылки',
            index: 4,
            selectedIndex: selectedIndex,
            onTap: onItemSelected,
          ),
          Spacer(),
          Divider(),
          _buildMenuItem(
            icon: Icons.logout,
            label: 'Выход',
            index: 5,
            selectedIndex: selectedIndex,
            onTap: onItemSelected,
            color: Colors.red,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required int index,
    required int selectedIndex,
    required Function(int) onTap,
    Color? color,
  }) {
    final isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: isSelected ? Colors.white : Colors.transparent,
        child: Row(
          children: [
            Icon(icon, color: color ?? (isSelected ? Colors.blue : Colors.black54)),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: color ?? (isSelected ? Colors.blue : Colors.black87),
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
            if (isSelected) Icon(Icons.chevron_right, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
