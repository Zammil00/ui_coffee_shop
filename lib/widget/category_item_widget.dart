import 'package:flutter/material.dart';

Widget _buildCategoryItem(String title, bool isSelected) {
  bool isSelected = false;

  void Isklik() {
    isSelected = true;
  }

  return Padding(
    padding: EdgeInsets.only(right: 10),
    child: Chip(
      label: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
      backgroundColor: isSelected ? Colors.brown : Colors.white,
    ),
  );
}
