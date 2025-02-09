import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    );
  }
}
