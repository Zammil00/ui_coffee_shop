import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/home/search_bar.dart';
import '../widget/home/promo_banner.dart';
import '../widget/home/category_filter.dart';
import '../widget/home/coffee_card.dart';
import '../widget/home/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  void toggleCategory() {
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
                const Icon(Icons.arrow_drop_down_outlined,
                    color: Colors.black54),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SearchBarWidget(),
            const SizedBox(height: 15),
            const PromoBannerWidget(),
            const SizedBox(height: 20),
            CategoryFilterWidget(isSelected: isSelected, onTap: toggleCategory),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const CoffeeCardWidget(
                    title: "Caffe Mocha",
                    subtitle: "Deep Foam",
                    price: "4.53",
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
