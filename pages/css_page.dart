import 'package:flutter/material.dart';

class CSSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to College Of Student Studies Department!'),
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
                    'https://tse2.mm.bing.net/th/id/OIP.5AIHHF7b7J5Q5FeWZuEygQAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text('College Of Computer Studies', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
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
                      'The College of Computer Studies (CCS) develops a society for competitive IT professionals through values-based quality education guided by the principles and best practices of the IT Program in order to promote nation building. ',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),

                    Text('VISSION', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),

                    Text(
                      'GRC-College of Computer Studies envisions producing quality IT professionals with values.  ',
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