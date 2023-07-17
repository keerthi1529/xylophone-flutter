import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  final audioPlayer =AudioPlayer();
  //  await audioPlayer.setSource(AssetSource('note$soundnumber.wav'));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  <Widget>[
                      Expanded(
                        child: TextButton(
                          child: Container( child: Text('my name is red'),
                          ),
                          onPressed:() {
                            audioPlayer.play(UrlSource('https://media.geeksforgeeks.org/wp-content/uploads/20210204222427/note1_c.wav'));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set the background color
                          ),
                ),
                      ),
                              SizedBox(
                              height: 15.0 ) ,
                         Expanded(
                          child: TextButton(
                  child:Container(
                   child: Text('my name is orange'),
                    ),
                    onPressed:() {
                              audioPlayer.play(UrlSource('https://media.geeksforgeeks.org/wp-content/uploads/20210204222429/note2_d.wav'));
                  },
                            style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Set the background color
                 ),
                 ),
                        ),
                  SizedBox( height: 15.0 ) ,
             Expanded(
                    child: TextButton(
     child:Container(
       child: Text('my name is yellow'),
     ),
                    onPressed:() {
    audioPlayer.play(UrlSource('https://media.geeksforgeeks.org/wp-content/uploads/20210204222431/note3_e.wav'));
    },
     style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), // Set the background color
     ),
    ),
                  ),
        SizedBox( height: 15.0 ) ,
       Expanded(
         child: TextButton(
    child:Container( child: Text('my name is green'),
    ),
    onPressed:() {
    audioPlayer.play(UrlSource('https://media.geeksforgeeks.org/wp-content/uploads/20210204222433/note4_f.wav'));
    },
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Set the background color
    ),
    ),
       ),
         SizedBox( height: 15.0 ) ,
        Expanded(
          child: TextButton(
    child: Container( child: Text('my name is cyan'),
    ),
    onPressed:() {
    audioPlayer.play(UrlSource('https://media.geeksforgeeks.org/wp-content/uploads/20210204222435/note5_g.wav'));
    },
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent), // Set the background color
    ),
    ),
        ),
        SizedBox( height: 15.0 ) ,
       Expanded(
         child: TextButton(child:Container( child: Text('my name is pink'),
    ),
    onPressed:() {
    audioPlayer.play(UrlSource('https://media.geeksforgeeks.org/wp-content/uploads/20210204222437/note6_a.wav'));
    },
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.pink), // Set the background color
    ),
    ),
       ),
     SizedBox( height: 15.0 ) ,
    Expanded(
      child: TextButton(
      child:Container(
      child: Text('my name is purple'),),
      onPressed:() {
      audioPlayer.play(UrlSource('https://media.geeksforgeeks.org/wp-content/uploads/20210204222438/note7_b.wav'));
      },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), // Set the background color
                ),
      ),
    ),
        ],
          ),
        ),
      ),
    );
  }
}
