import 'package:flutter/material.dart';
import 'package:ghackk/screens/fav_screen.dart';
import 'package:provider/provider.dart';
import '../provider/webtoon_provider.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final webtoonProvider = Provider.of<WebtoonProvider>(context);
    final categories = webtoonProvider.categories;

    return Scaffold(
      appBar: AppBar(title: const Text('Webtoon Explorer',style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      actions: [
        IconButton(icon: const Icon(Icons.favorite), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  FavoritesScreen()));
          },)
      ],
      ),
      body: Column(
        children: [
          const Text('Top 10 Popular Webtoons with Over 50 million Views',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          const Text('In this page, we explain why you should read these top 10 popular webtoons with more than 50 million views.',style: TextStyle(color: Colors.amber,fontSize: 15),),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(category),
                      ),
                    );
                  },
                  child: Card(

                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          category.thumbnailUrl,
                          fit: BoxFit.cover,
                          height: 86,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            category.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Creator: ${category.creator}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Genre: ${category.genre}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
