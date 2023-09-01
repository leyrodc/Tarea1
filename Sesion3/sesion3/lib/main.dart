import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter McFlutter'),
        ),
        body: UserProfile(),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://example.com/your-profile-image.jpg'), // URL de la foto de perfil
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter McFlutter',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Experimented Developer',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconWithDescription(
                icon: Icons.email,
                description: 'Correo Electrónico',
              ),
              IconWithDescription(
                icon: Icons.phone,
                description: 'Número de Teléfono',
              ),
              IconWithDescription(
                icon: Icons.location_on,
                description: 'Ubicación',
              ),
              IconWithDescription(
                icon: Icons.web,
                description: 'Sitio Web',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconWithDescription extends StatelessWidget {
  final IconData icon;
  final String description;

  IconWithDescription({required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(height: 5),
        Text(description),
      ],
    );
  }
}
