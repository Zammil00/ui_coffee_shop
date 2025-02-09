import 'package:flutter/material.dart';

Widget buildCategoryItem(String title, bool isSelected, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Chip(
      label: Text(
        title,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
      backgroundColor: isSelected ? Colors.brown : Colors.white,
    ),
  );
}
