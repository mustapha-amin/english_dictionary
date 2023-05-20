//import 'package:english_dictionary/widgets/searchbar.dart';
import 'package:english_dictionary/widgets/spacings.dart';
import 'package:english_dictionary/widgets/textStyle.dart';
import 'package:flutter/material.dart';
import '../widgets/searchbar.dart' as custom;

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
                  height: size.height / 4.3,
                ),
                Text(
                  "Dictionary",
                  style: kTextStyle(30, true),
                ),
                addVerticalSpace(20),
                custom.SearchBar(
                  searchbarController: _searchbarController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
