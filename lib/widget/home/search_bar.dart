// Widget Search Bar
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.grey[300],
              hintText: "Cari Kopi",
            ),
          ),
        ),
        const SizedBox(width: 15),
        _buildIconButton(Icons.list),
      ],
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.brown, borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, size: 35, color: Colors.white),
      ),
    );
  }
}