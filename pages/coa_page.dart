import 'package:flutter/material.dart';

class COAPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to College Of Accountancy'),
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
                    'https://grc.edu.ph/wp-content/uploads/2020/09/images.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text('College Of Accountancy', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
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
                      'GRC- College of Accountancy will instill in minds and hearts of future certified public accountants that there is reliance in reaching their goals and to make home for them to be nurtured, motivated, encouraged to be competent and God- fearing individuals   ',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),

                    Text('VISSION', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),

                    Text(
                      'GRC- College of Accountancy envisions to be recognized as one of the producers of highly competent and responsive professionals in the field of Accountancy. ',
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