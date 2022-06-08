import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<String> yanitlar = [
  '',
  '''*Forrest Gump*
IMDb: 8,8
Oyuncular: Tom Hanks, Robin Wright, Gary Sinise  ''',
  '''*Titanic*
IMDb: 7,9
Oyuncular: Leonardo DiCaprio, Kate Winslet, Billy Zane''',
  '''*Eternal Sunshine of the Spotless Mind*
IMDb: 8,3
Oyuncular: Jim Carrey, Kate Winslet, Tom Wilkinson, Gerry Robert Byrne''',
  '''*Good Will Hunting*
   IMDb: 8,3
   Oyuncular: Robin Williams, Matt Damon, Ben Affleck, Stellan Skarsgård''',
  '''*Le fabuleux destin d'Amélie Poulain*
  IMDb: 8,3
  Oyuncular: Audrey Tautou, Mathieu Kassovitz, Rufus, Lorella Cravotta''',
  //aksiyon
  '''The Dark Knight
  IMDb: 9,0
  Oyuncular: Christian Bale, Heath Ledger, Aaron Eckhart''',
  '''Inception
  IMDb: 8,8 
  Oyuncular: Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page''',
  '''The Matrix
  IMDb: 8,7
  Oyuncular: Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss ''',
  '''Gladiator
  IMDb: 8,5
  Oyuncular: Russell Crowe, Joaquin Phoenix, Connie Nielsen''',
  '''The Avengers
  IMDb: 8,0
  Oyuncular: Robert Downey,Chris Evans,Scarlett Johansson''',
  //komedi
  '''Barry
  IMDb: 8,3
  Oyuncular: Bill Hader, Stephen Root, Sarah Goldberg ''',
  '''
  The Lost City
  IMDb: 6,2
  Oyuncular: Sandra Bullock, Channing Tatum, Daniel Radcliffe ''',
  '''
  The Lost City
  IMDb: 6,2
  Oyuncular: Sandra Bullock, Channing Tatum, Daniel Radcliffe''',
  '''
  Triangle of Sadness
  IMDb: 7,8
  Oyuncular: Charlbi Dean, Harris Dickinson, Woody Harrelson ''',
  '''
  A Perfect Pairing
  IMDb: 6,1
  Oyuncular: Victoria Justice, Adam Demos, Luca Asta Sardelis ''',
  // animation
  '''WALL·E 
  IMDB: 8,4
  Direktör: Andrew Stanton ''',
  '''The Lion King
  IMDB: 8,5
  Direktörler: Roger Allers, Rob Minkoff ''',
  '''Finding Nemo 
  IMDB: 8,2
  Direktörler: Andrew Stanton, Lee Unkrich   ''',
  '''UP 
  IMDB: 8,3
  Direktörler: Pete Docter, Bob Peterson  ''',
  '''Toy Story
  IMDB: 8,3
  Direktör: John Lasseter  ''',
];

int sayi = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            title: const Center(
              child: Text('Bugün Hangi Tür Film İzlemek İstersin?'),
            ),
            backgroundColor: Colors.brown),
        body: filmSayfasi(),
      ),
    );
  }
}

class filmSayfasi extends StatefulWidget {
  const filmSayfasi({Key? key}) : super(key: key);

  @override
  _filmSayfasiState createState() => _filmSayfasiState();
}

class _filmSayfasiState extends State<filmSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 18,
          ),
          Container(
            width: 130,
            height: 130,
            child: Image.asset('assets/popcorn.jpg'),
          ),
          Container(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  sayi = Random().nextInt(5) + 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Container(
                      width: 30,
                    ),
                    const Text(
                      'Romantik',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  sayi = Random().nextInt(5) + 6;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    const Icon(
                      Icons.surfing,
                      color: Colors.brown,
                    ),
                    Container(
                      width: 30,
                    ),
                    const Text(
                      'Aksiyon',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  sayi = Random().nextInt(5) + 11;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    const Icon(
                      Icons.theater_comedy_outlined,
                      color: Colors.green,
                    ),
                    Container(
                      width: 30,
                    ),
                    const Text(
                      'Komedi',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  sayi = Random().nextInt(5) + 16;

                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    const Icon(
                      Icons.animation,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 30,
                    ),
                    const Text(
                      'Animasyon',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Text(
            yanitlar[sayi],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}
