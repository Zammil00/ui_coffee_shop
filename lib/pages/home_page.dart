import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/category_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lokasi",
              style: GoogleFonts.sora(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            Row(
              children: [
                Text(
                  "Bireuen , Matang",
                  style: GoogleFonts.sora(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintText: "Cari Kopi"),
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  width: 55,
                  height: 55,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.list, size: 35, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          // PROMO BANNER 111111111111111111111111111111111111111111111111111111
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.brown,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:
                          Text("Promo", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Buy one get one FREE",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          // KATEGOTY FILTERRRR !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildCategoryItem("Semua Kopi", true),
                _buildCategoryItem("Kopi Susu", false),
                _buildCategoryItem("Teh Dingin", false),
                _buildCategoryItem("Kopi Khop", false),
                _buildCategoryItem("Kopi Kenangan", false),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
