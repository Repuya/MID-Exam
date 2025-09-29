import 'package:flutter/material.dart';

class EDUCPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to College Of Education Department!'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              // Profile picture
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://grc.edu.ph/wp-content/uploads/elementor/thumbs/images-outtqfi2bkabm5mkp423ok2v07yv1f210lenh6ojhs.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text('College Of Education', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
              SizedBox(height: 8),

              // About me card
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MISSION', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),

                    Text(
                      'GRC-College of Education provides training for future professional teachers to be reliable facilitators of learning equipped with specialized skills anchored on moral and global standards. ',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),

                    Text('VISSION', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),

                    Text(
                      'GRC-College of Education will be a distinguished tertiary institution specializing in the degree of Education through meaningful collaborations, commitment to public scholarship and integration of research, practice, and policy abreast to the challenges of globalization.  ',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),
                  ],
                ),


              ),
            ],
          ),
        ),
      ),
    );
  }
}