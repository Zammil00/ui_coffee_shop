import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/category_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  void isKlik() {
    isSelected = true;
  }

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
                ElevatedButton(
                  onPressed: () {
                    isKlik();
                    setState(() {});
                  },
                  child: Chip(
                    label: Text(
                      "Kopi Labil",
                      style: TextStyle(
                        color: isSelected == true ? Colors.white : Colors.black,
                      ),
                    ),
                    backgroundColor:
                        isSelected == true ? Colors.brown : Colors.white,
                  ),
                ),
                _buildCategoryItem("Kopi Pamalang", isSelected),
                _buildCategoryItem("Kopi Pamalang", isSelected),
                _buildCategoryItem("Kopi Pamalang", isSelected),
                _buildCategoryItem("Kopi Pamalang", isSelected),
                _buildCategoryItem("Kopi Pamalang", isSelected),
                _buildCategoryItem("Kopi Pamalang", isSelected),
                _buildCategoryItem("Kopi Pamalang", isSelected),
                _buildCategoryItem("Kopi Pamalang", isSelected),
              ],
            ),
          ),
          SizedBox(height: 10),
          // Coffee Grid
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 20),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75,
              children: [
                _buildCoffeeCard("Caffe Mocha", "Deep Foam", "4.53"),
                _buildCoffeeCard("Flat White", "Espresso", "3.53"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
      ),
    );
  }
}

Widget _buildCategoryItem(String title, bool isSelected) {
  return ElevatedButton(
    onPressed: () {},
    child: Chip(
      label: Text(
        title,
        style: TextStyle(
          color: isSelected == true ? Colors.white : Colors.black,
        ),
      ),
      backgroundColor: isSelected == true ? Colors.brown : Colors.white,
    ),
  );
}

Widget _buildCoffeeCard(String title, String subtitle, String price) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/coffee.jpg"), // Ganti dengan gambar asli
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle, style: TextStyle(color: Colors.grey)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ $price",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Icon(Icons.add, color: Colors.orange),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
