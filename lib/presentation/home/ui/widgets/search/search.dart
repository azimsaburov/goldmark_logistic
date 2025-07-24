import 'package:flutter/material.dart';
import 'package:goldmark_logistic/constants/colors_const.dart';

class Search extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  const Search({super.key, required this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 324,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: label,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          filled: true,
          fillColor: ColorsConst.primary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(Icons.search)
        ),
      ),
    );
  }
}
