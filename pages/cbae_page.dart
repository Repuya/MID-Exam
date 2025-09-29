import 'package:flutter/material.dart';

class CBAEPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to College Of Entrepreneurship'),
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
                    'https://grc.edu.ph/wp-content/uploads/2023/02/ENTREP-min.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text('College Of Entrepreneurship', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
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
                      'GRC-College of Entrepreneurship prepares and supports its students with functional knowledge, practical skills with proper values, and work ethics as future entrepreneurs. ',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),

                    Text('VISSION', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),

                    Text(
                      'The College envisions producing successful entrepreneurs with values.  ',
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