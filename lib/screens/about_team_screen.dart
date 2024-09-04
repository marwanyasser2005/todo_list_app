import 'package:flutter/material.dart';

class AboutTeamScreen extends StatelessWidget {
  const AboutTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              'https://i.postimg.cc/zGNWQPyq/0811aa83-4b0a-4a1a-8aa3-82896ad49458.jpg', // Replace with your actual background image URL
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'AppName: InnovativeApp',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  'Meet Our Team',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                _buildTeamMemberCard(
                  name: 'Marwan Yasser',
                  role: 'Founder',
                  description: 'Marwan Yasser is a dedicated student of Geochemistry Science at Helwan University with a strong background in AI, web development, and Flutter. He has interned with Zewail City of Science & Technology and ITI, and is passionate about sustainability and innovative technology solutions. Marwan is also involved in content creation and has certifications in project management and digital design',
                  imageUrl: 'https://i.postimg.cc/T1vBm63z/imresizer-1699145228557.jpg', // Replace with actual online image URL
                ),
                const SizedBox(height: 16),
                _buildTeamMemberCard(
                  name: 'Moshira Hassan',
                  role: 'Co-Founder',
                  description: 'Moshira Hassan is a senior in the Computer Science Department at the Faculty of Science, Zagazig University. She is also a co-founder of InnovativeApp, where she plays a crucial role in its development and execution. Her work combines her academic background with her passion for innovative technology solutions.',
                  imageUrl: 'https://i.postimg.cc/sXLgR1Kp/351148599-279843654463867-1924487549891371430-n.jpg', // Replace with actual online image URL
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamMemberCard({
    required String name,
    required String role,
    required String description,
    required String imageUrl,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Adjusted text color for visibility
                    ),
                  ),
                  Text(
                    role,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Adjusted text color for visibility
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black, // Adjusted text color for visibility
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
