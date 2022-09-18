import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    /*
    return (
      Scaffold(
        appBar: AppBar(
          title: Text(
            "Home"
          ),
        ),
        body: SafeArea(
          child: Text("Home Page"),
        ),
      )
    );
     */

/*
TextButton.icon(
                onPressed: (){ Navigator.pushNamed(context, '/location');},
                icon: Icon(Icons.edit_location),
                label: Text("Edit Location")
            )
 */

    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Page"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              color: Colors.green,
                child: MaterialButton(
                  onPressed: (){
                      Navigator.pushNamed(context, '/location');
                    },
                  child: Text("Location"),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              color: Colors.green,
              child: MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/loading');
                },
                child: Text("Loading"),
              ),
            ),


          ],
        ),
      )
    );
  }
}