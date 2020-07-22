import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninjar ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0, //Make drop shadow gone
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 40,
                
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Choem Thea',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                SizedBox(width: 8,),
                Text(
                  'theacheng.g6@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2.0,
                    color: Colors.grey[400],
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}