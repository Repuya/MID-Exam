import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Global Reciprocal Colleges!'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main welcome icon
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.network(
                  'https://th.bing.com/th/id/R.1f99f673ee45e3d0c115c49f859294e6?rik=nf2%2bMwdMeBHVow&riu=http%3a%2f%2fglobalreciprocalcollegeswebsite.weebly.com%2fuploads%2f4%2f4%2f9%2f7%2f44975003%2f3514826.jpg&ehk=nW4elIS%2fngL1JS2IE4bd7z1vG%2b%2bmjjbGJ976YEJlSDQ%3d&risl=&pid=ImgRaw&r=0',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 30),

              // Welcome title
              Text(
                'Click mo ang mga course na gusto mong sumira sa life mo',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),

              // Subtitle
              Text(
                'Enjoy your College Life!!',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),


            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickNavCard(IconData icon, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: color),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}