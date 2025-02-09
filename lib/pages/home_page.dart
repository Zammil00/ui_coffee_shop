import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  void isKlik() {
    setState(() {
      isSelected = !isSelected;
    });
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
            Text("Lokasi",
                style: GoogleFonts.sora(fontSize: 12, color: Colors.black54)),
            Row(
              children: [
                Text("Bireuen, Matang",
                    style: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_drop_down_outlined, color: Colors.black54),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildSearchBar(),
            SizedBox(height: 15),
            _buildPromoBanner(),
            SizedBox(height: 20),
            _buildCategoryFilter(),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return _buildCoffeeCard("Caffe Mocha", "Deep Foam", "4.53");
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.grey[300],
              hintText: "Cari Kopi",
            ),
          ),
        ),
        SizedBox(width: 15),
        _buildIconButton(Icons.list),
      ],
    );
  }

  Widget _buildPromoBanner() {
    return Container(
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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text("Promo", style: TextStyle(color: Colors.white)),
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
    );
  }

  Widget _buildCategoryFilter() {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategoryItem("Kopi Labil", isSelected, isKlik),
          _buildCategoryItem("Kopi Pamalang", false, isKlik),
          _buildCategoryItem("Kopi Aceh", false, isKlik),
        ],
      ),
    );
  }

  Widget _buildCoffeeCard(String title, String subtitle, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 10)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/coffee.jpg"),
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
                    Text("Rp. $price",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.add, color: Colors.orange),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, bool isSelected, Function() onTap) {
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

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
      ],
    );
  }
}
