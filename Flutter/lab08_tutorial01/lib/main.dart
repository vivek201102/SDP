
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: FinalTest1(),
));
class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    maxRadius: 100,
                  ),



                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child:Text(
                      'NAME: ',
                      style: TextStyle(
                        color: Colors.grey[800],
                        letterSpacing: 2.0,
                      ),

                    ),
                  ),

                  SizedBox(height: 10),


                  Text(
                    'VIVEK PATEL',
                    style: TextStyle(
                      color: Colors.blue[900],
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),

                  SizedBox(height: 40),
                  Text(
                    'AGE',
                    style: TextStyle(
                    color: Colors.grey[800],
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10),

                Text(

                '20',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),

                  SizedBox(height: 50),

                  Column(
                    children: [
                    Icon(
                    Icons.email_rounded,
                    color: Colors.deepPurple[800],
                    ),

                      SizedBox(width: 12.0),
                      Text(
                    'vivekpatel201102@gmail.com',
                        style: TextStyle(
                          color: Colors.brown[800],
                          fontSize: 16.0,
                          letterSpacing: 1.5,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ),
          ]),
        ),
    );
  }
}



/*

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Basic Padding practice
/*
    //Basic container
    return MaterialApp(
        title: "Lab 08",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tutorial 1"),
          ),
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Hello From Container"),
          )
        )
    );


 */

  /*
   return MaterialApp(
     title: "Lab 08",
     home: Scaffold(
       appBar: AppBar(
         title: Text("Tutorial 1"),
       ),
       body: Padding(
         padding:EdgeInsets.all(50.0),
         // padding: EdgeInsets.only(left: 50.0, top: 20.0),
         // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
         child: Text("My padding test some more text to check for mulitple lines"),
       ),
     )
   );



   */



    //Row and Container with margin and padding
/*

   return (MaterialApp(
       title: "Lab 08",
       home: Scaffold(
           appBar: AppBar(
             title: Text("Tutorial 1"),
           ),
           body: Container(
             color: Colors.greenAccent,
             child: Row(
               // crossAxisAlignment: CrossAxisAlignment.baseline,
               children: [
                 Text(
                   "Hello From Row",
                   style: TextStyle(
                     height: 10,
                   ),
                 ),

                 Container(
                   child: Text("Hello From text"),
                   margin: EdgeInsets.only(bottom: 0),
                 ),

                 Container(
                   color: Colors.purple[200],
                   child: Text("In container"),
                   // padding: EdgeInsets.all(15),
                   padding: EdgeInsetsDirectional.only(start: 50, end: 20, top: 30, bottom: 20),
                   margin: EdgeInsets.only(left: 15),
                 )
               ],
             ),
           )
       )
   )
   );




 */

    /*
    return(MaterialApp(
        title: "Lab 08",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tutorial 1"),
          ),
          body:

          Container(
            width: 450,
            child: Column(

              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.green[200],
                  padding:EdgeInsets.all(60),
                  child:
                  Text("Container 1"),
                ),

                Container(
                  color: Colors.purple[200],
                  padding: EdgeInsets.all(60),
                  child: Text("Container 2"),
                ),

                Container(
                  // height: 100,
                  // width: 100,
                  color: Colors.red[400],
                  padding: EdgeInsets.all(60),
                        child: Text(
                          "Container 3",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                )
              ],
            ),
          ),
        )
    ));


     */
    //Column and Containers

/*
   return(MaterialApp(
       title: "Lab 08",
       home: Scaffold(
         appBar: AppBar(
           title: Text("Tutorial 1"),
         ),
         body:

         Container(

           child: Column(
             // mainAxisAlignment: MainAxisAlignment.end,
             // mainAxisAlignment: MainAxisAlignment.spaceAround,
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(

                 child:
                   Text("Nested Container"),
               ),

               FlatButton(
                 onPressed: (){},
                 color: Colors.purple[200],
                 child: Text("Flat Button"),
               ),

               Container(
                 // height: 100,
                 // width: 100,
                 child: FittedBox(

                     child: FloatingActionButton(onPressed: (){print("Button Pressed");},
                       child: Text(
                         "Click",
                         style: TextStyle(
                           color: Colors.black,
                         ),
                       ),
                     )
                 ),
               ),




             ],
           ),
         ),
       )
   ));


*/
/*
   return(MaterialApp(

     title: "Lab 08",
     home: Scaffold(
       appBar: AppBar(
         title: Text("Tutorial 1"),
       ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text("Row 1 Text 1 "),
                Text("Row 1 Text 2 "),
              ],
            ),

            Row(
               children: [
                 Text("Row 2 Text 1 "),
                 Text("Row 2 Text 2 "),
               ],
            ),
          ],
        ),
      ),
     )
   ));

*/

/*
   return(MaterialApp(
       title: "Lab 08",
       home: Scaffold(
         appBar: AppBar(
           title: Text("Tutorial 1"),
         ),
         body: Row(
           children: [
             Column(
               children: [
                 Text("Column 1 Text 1 "),
                 Text("Column 1 Text 2 "),
               ],
             ),

             Column(
               children: [
                 Text("Colum 2 Text 1 ",),
                 Text("Colum 2 Text 2 "),
               ],
             )
           ],
         ),
       )
   ));



 */
  /*

    return(MaterialApp(
        title: "Lab 08",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tutorial 1"),
          ),

          body: Row(

            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Expanded(child:

                Container(
                  child: Text("Inside container 1"),
                  color: Colors.deepOrange[800],
                  padding: EdgeInsets.all(30.0),
                ),
              ),

              Expanded(child:

              Container(
                child: Text("Inside container 2"),
                color: Colors.limeAccent,
                padding: EdgeInsets.all(50.0),
              ),
              ),


              Expanded(child:
              Container(
                child: Text("Inside container 3"),
                color: Colors.green[800],
                padding: EdgeInsets.all(70.0),
              ),
              ),
              Expanded(child:
              Container(
                  child: Text("Inside container 4"),
                  color: Colors.pink[500],
                  padding: EdgeInsets.all(90.0),
              ),
              )
            ],
          )
        )
    ));



   */




/*
    return (MaterialApp(
        title: "Lab 08",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tutorial 1"),
          ),

          body: Row(
            children: [
              Expanded(child:

              Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.amber[700],
                  child: Text("1"),
                ),
              ),

              Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.indigo[900],
                child: Text("2"),
              ),

              Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.green[800],
                child: Text("3"),
              ),
            ],
          ),
        )
    )
  );
    


 */
/*
    return(MaterialApp(
        title: "Lab 08",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tutorial 1"),
          ),
          body: Column(
            children: [
              Container(

                child: Text("Row 1 Column 1"),
                padding: EdgeInsets.all(20.0),
              ),

              Container(
                child: Text("Row 2 Column 1"),
                padding: EdgeInsets.all(20.0),
              )
            ],
          ),
        )
    ));
*/

  /*
    return(MaterialApp(
        title: "Lab 08",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tutorial 1"),
          ),
          body: Row(
            children: [
              Container(

               child: Text("Row 1 Column 1"),
                padding: EdgeInsets.all(20.0),
              ),

              Container(
                child: Text("Row 1 Column 2"),
                padding: EdgeInsets.all(20.0),
              )
            ],
          ),
        )
    ));


   */

    /*
       return(MaterialApp(
     title: "Lab 08",
     home: Scaffold(
         appBar: AppBar(
         title: Text("Tutorial 1"),
       ),
     )
   ));
    */
  }
}

 */

/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/


