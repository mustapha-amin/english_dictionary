import 'package:english_dictionary/screens/detail.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController searchbarController;
  SearchBar({super.key, required this.searchbarController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: searchbarController,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: "Enter word",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
          fillColor: Colors.grey[400],
          filled: true,
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (_) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(
              entry: searchbarController.text,
            );
          }));
        },
      ),
    );
  }
}
