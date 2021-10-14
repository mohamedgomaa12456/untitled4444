import 'package:flutter/material.dart';

void main() {
  runApp(FacebookScreen());
}

class FacebookScreen extends StatefulWidget {
  const FacebookScreen({Key? key}) : super(key: key);

  @override
  _FacebookScreenState createState() => _FacebookScreenState();
}

class _FacebookScreenState extends State<FacebookScreen> {
  bool _isLiked = false;
  bool _isfollow =false;

  bool _isGo =false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Facebook"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iamges/tt.jpg"),
              ),
              title: Text(
                "mohamed gomaa",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              subtitle: Text("Student"),
              trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      _isLiked = !_isLiked;
                    });
                  },
                  icon: Icon(
                   _isLiked ? Icons.thumb_up: Icons.thumb_up_off_alt_outlined,
                    color: _isLiked  ? Colors.blue : Colors.grey,

                  ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: ElevatedButton(onPressed: () {
                setState(() {
                  _isfollow = !_isfollow;
                });
              }, child: Text(_isfollow ?"un Follow": "Follow")),
            ),
         Column(
           children: [
             ListTile(
               leading: Text(" GO And Back" ,
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 40
               ),
               ),

               trailing: IconButton(onPressed: (){
                setState(() {
                  _isGo = !_isGo;
                }
                );
               },
                   icon: Icon(
                     _isGo ? Icons.directions_walk : Icons.search
                   ),
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
