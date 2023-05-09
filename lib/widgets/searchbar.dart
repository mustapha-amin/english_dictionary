import 'package:english_dictionary/screens/detail.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController searchbarController;
  SearchBar({super.key, required this.searchbarController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height / 13,
          ),
          child: TextField(
            controller: searchbarController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white),
              ),
              fillColor: Colors.grey[400],
              filled: true,
            ),
            style: const TextStyle(height: 1),
            textAlignVertical: TextAlignVertical.center,
            textInputAction: TextInputAction.search,
            onSubmitted: (_) {
              searchbarController.text.isNotEmpty
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return DetailScreen(
                        entry: searchbarController.text,
                      );
                    })).then((value) => searchbarController.clear())
                  : null;
            },
          ),
        ),
      ),
    );
  }
}
