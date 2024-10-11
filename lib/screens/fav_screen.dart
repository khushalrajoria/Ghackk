import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/webtoon_provider.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<WebtoonProvider>(context).favorites;

    return Scaffold(
      appBar: AppBar(title: const Text('Your Favorites')),
      body: favorites.isEmpty
          ? const Center(child: Text('No favorites added yet!'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final category = favorites[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.network(category.thumbnailUrl),
                    title: Text(category.title),
                  ),
                );
              },
            ),
    );
  }
}
