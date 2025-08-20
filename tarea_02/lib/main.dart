import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto
              const Text(
                "Flutter layout demo",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
              ),


              // Imagen
              const Image(
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/0/0f/20190725_Oeschinensee-Panorama%2C_Kandersteg_%2806540-42_stitch%29.jpg",
                ),
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Título + Estrella
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Texto a la izquierda
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Kandersteg, Switzerland",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  // Estrella + número
                  const Icon(Icons.star, color: Colors.red),
                  const SizedBox(width: 4),
                  const Text("41"),
                ],
              ),
            ),



              // Fila de botones
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButtonColumn(Icons.phone, "CALL", Colors.blue),
                    _buildButtonColumn(Icons.send, "ROUTE", Colors.blue),
                    _buildButtonColumn(Icons.share, "SHARE", Colors.blue),
                  ],
                ),
              ),

              // Texto largo
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
                  "Situated 1,578 meters above sea level, it is one of the larger Alpine lakes. "
                  "A gondola ride from Kandersteg, followed by a half-hour walk through pastures "
                  "and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. "
                  "Activities enjoyed here include rowing and riding the summer toboggan run.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Definir ícono y texto
Widget _buildButtonColumn(IconData icon, String label, Color color) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: color),
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color),
      ),
    ],
  );
}
