import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peliculas en Cartelera'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(
                'El Sorprendente Hombre Araña',
                'Fecha: 29 de mayo de 2024\nHora: 15:40\nGenero: Ficción\nDuracion: 2h 10m',
                'https://play-lh.googleusercontent.com/zK7N_aax8nEIEr3VVda3xh7_-jpIgGOu5wXLH6Hx9NGwruFinT6AZ5qbEYt5IjO28IEQ7Q',
              ),
              const SizedBox(height: 20),
              buildCard(
                'No Country For Old Men',
                'Fecha: 29 de mayo de 2024\nHora: 19:00\nGenero: Thriller\nDuracion: 2h',
                'https://i.ebayimg.com/thumbs/images/g/194AAMXQgJRQ90Kw/s-l1200.jpg',
              ),
              const SizedBox(height: 20),
              buildCard(
                'Joker',
                'Fecha: 29 de mayo de 2024\nHora: 21:30\nGenero: Suspenso\nDuracion: 2h 10m',
                 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
              ),
              const SizedBox(height: 20),
              buildCard(
                'Taxi Driver',
                'Fecha: 29 de mayo de 2024\nHora: 23:40\nGenero: Drama\nDuracion: 1h 54m',
                'https://m.media-amazon.com/images/M/MV5BM2M1MmVhNDgtNmI0YS00ZDNmLTkyNjctNTJiYTQ2N2NmYzc2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_FMjpg_UX1000_.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String titulo, String detalles, String imageUrl) {
  return Center( // Envuelve la tarjeta en un Center
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 16 / 9, 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              detalles,
              style: const TextStyle(
                
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}