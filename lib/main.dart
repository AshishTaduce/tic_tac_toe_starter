import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TicTacToePage(),
    theme: ThemeData(fontFamily: 'Proxima Nova Soft W03 Semibold.ttf'),
  ));
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

enum Choice {
  cross,
  circle,
}

class _TicTacToePageState extends State<TicTacToePage> {

  @override

  Widget build(BuildContext context) {


    var textHeight = MediaQuery.of(context).size.height * 0.10;

    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('Play On!'),
//        backgroundColor: Colors.blue.withAlpha(10),
//      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          image: DecorationImage(
            image: AssetImage(
              "assets/background.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: textHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Tic-Tac-Toe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Player X to Move',
                style: TextStyle(
                  color: Colors.white.withAlpha(150),
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(child: TicTacRow()),
            Expanded(child: TicTacRow()),
            Expanded(child: TicTacRow()),
            FlatButton(
              color: Colors.white.withAlpha(150),
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: textHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class TicTacRow extends StatelessWidget {
final Choice choice;
final Function tapCallback;
final Widget child;
  TicTacRow(
      {this.child, this.tapCallback, this.choice});
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: tapCallback,
            child: Container(
              margin: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(150),
                borderRadius: BorderRadius.all(Radius.circular(12),),
              ),
                child: Icon( choice == Choice.circle
                        ?
                        FontAwesomeIcons.circle: FontAwesomeIcons.check,)
                    ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: tapCallback,
            child: Container(
              margin: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(150),
                borderRadius: BorderRadius.all(Radius.circular(12),),),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(150),
              borderRadius: BorderRadius.all(Radius.circular(12),),),
          ),
        ),
      ],
    );
  }
}
