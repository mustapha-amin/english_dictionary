import 'package:english_dictionary/widgets/searchbar.dart';
import 'package:english_dictionary/widgets/spacings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchbarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/images/dictionary.jpg',
                  height: size.height / 4,
                ),
                Text(
                  "Dictionary",
                  style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                addVerticalSpace(20),
                SearchBar(
                  searchbarController: _searchbarController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
