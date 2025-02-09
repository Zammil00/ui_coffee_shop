// Widget Category Filter
import 'package:flutter/material.dart';

class CategoryFilterWidget extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryFilterWidget({super.key, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildCategoryItem("Espresso", isSelected, onTap),
        _buildCategoryItem("Latte", !isSelected, onTap),
        _buildCategoryItem("Mocha", isSelected, onTap),
        _buildCategoryItem("Cappuccino", !isSelected, onTap),
      ],
    );
  }

  Widget _buildCategoryItem(String title, bool selected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? Colors.brown : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
