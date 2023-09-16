import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List names = ["sarmad", "Ali", "Akbar", "Sabir"];
  List emptyFavourite = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    if (emptyFavourite.contains(
                      names[index].toString(),
                    )) {
                      emptyFavourite.remove(
                        names[index].toString(),
                      );
                    } else {
                      emptyFavourite.add(
                        names[index].toString(),
                      );
                    }
                    setState(() {});
                  },
                  title: Text(
                    names[index].toString(),
                  ),
                  trailing: Icon(
                    Icons.favorite,
                    color: emptyFavourite.contains(names[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
