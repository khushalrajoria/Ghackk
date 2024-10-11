import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/webtoon_model.dart';
import '../provider/webtoon_provider.dart';

class DetailScreen extends StatelessWidget {
  final WebtoonCategory category;

  const DetailScreen(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    final webtoonProvider = Provider.of<WebtoonProvider>(context);
    final isFavorite = webtoonProvider.isFavorite(category);

    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(category.thumbnailUrl),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  webtoonProvider.toggleFavorite(category);
                },
                child: Text(isFavorite ? 'Remove from Favorites' : 'Add to Favorites'),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(' ${category.description}'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Major Characters in Lore Olympus Webtoon',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const CharacterDisplay(
              imageUrl: 'https://animemangatoon.com/wp-content/uploads/2024/05/64u47lg4-360x504.png.webp',
              name: 'Hades',
              description: 'In the Lore Olympus webtoon, Hades, the God of the underworld, takes center stage. Often depicted as a handsome blue man in a business suit, Hades runs the Underworld Corporation, serves as the older brother of Zeus and Poseidon, and plays a role in the Six Traitor Dynasty. His character takes on the burden of leadership and pursuing personal interests.',
            ),
            const CharacterDisplay(
              imageUrl: 'https://animemangatoon.com/wp-content/uploads/2024/05/myq53tdb-360x504.png.webp',
              name: 'Persephone',
              description: 'Persephone, the goddess of spring, is the story’s heroine alongside the underworld. Initially portrayed as an innocent and naive young woman, her character develops dramatically as she faces more challenges.',
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Minor Lore Olympus Characters',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const CharacterDisplay(
              imageUrl: 'https://animemangatoon.com/wp-content/uploads/2024/05/zo3dwfwa-360x504.png.webp',
              name: 'Hermes',
              description: 'Hermes, the God of speed travel, is depicted as an athletic man in red. He works as a soul collector for Hades and is an old friend of Persephone.',
            ),
            const CharacterDisplay(
              imageUrl: 'https://animemangatoon.com/wp-content/uploads/2024/05/6g6fq36m-360x504.png.webp',
              name: 'Artemis',
              description: 'Artemis, the goddess of the hunt, is Persephone’s best friend and roommate. She is a robust, dark-red tomboy fiercely protective of Persephone.',
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterDisplay extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;

  const CharacterDisplay({super.key, 
    required this.imageUrl,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120, 
            height: 180,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover, 
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
