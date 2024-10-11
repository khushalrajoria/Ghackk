import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/webtoon_provider.dart';
import 'screens/fav_screen.dart';
import 'screens/home_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            WebtoonProvider provider = WebtoonProvider();
            provider.loadFavoritesFromStorage(); 
            return provider;
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Webtoon Explorer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
        routes: {
          '/favorites': (context) => FavoritesScreen(),
        },
      ),
    );
  }
}
