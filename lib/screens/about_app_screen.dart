import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About the App'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Marolista: Your Ultimate To-Do List',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            _buildAppInfoCard(
              title: 'Purpose',
              content:
              'Marolista is designed to help you manage your tasks efficiently. Whether it\'s work, personal, or urgent tasks, our app ensures you stay organized and on top of your schedule.',
            ),
            SizedBox(height: 16),
            _buildAppInfoCard(
              title: 'Key Features',
              content:
              '• Task Management: Add, edit, and delete tasks with ease.\n• Categories: Organize tasks by categories such as Work, Personal, and Urgent.\n• Notifications: Get timely reminders for your tasks.\n• Sync with Firebase: Keep your tasks secure and accessible from any device.',
            ),
            SizedBox(height: 16),
            _buildAppInfoCard(
              title: 'Technology Stack',
              content:
              'Marolista is built using Flutter for the frontend, ensuring a smooth and responsive user experience. Firebase is used as the backend for real-time data synchronization and storage.',
            ),
            SizedBox(height: 16),
            _buildAppInfoCard(
              title: 'Developed By',
              content:
              'This app is developed by Marwan Yasser (Founder) and Moshira Hassan (Co-Founder), a dedicated team committed to providing high-quality applications that make your life easier.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppInfoCard({required String title, required String content}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
