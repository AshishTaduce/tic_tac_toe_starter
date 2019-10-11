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
  empty,
}

class _TicTacToePageState extends State<TicTacToePage> {
  Choice choice = Choice.empty;

  List<List<Choice>> board = [];
  List<List<Choice>> createBoard() {
    var boardSize = 3;
    return List.generate(boardSize, (_) => List.filled(boardSize, choice));
  }

  List<List<IconData>> symbol = [[null,null,null],[null,null,null],[null,null,null],];
  List<List<IconData>> createSymbol() {
    var boardSize = 3;
    return List.generate(boardSize, (_) => List.filled(boardSize, null));
  }
  @override
  Widget build(BuildContext context) {
    board = createBoard();

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
            Row(
              children: <Widget>[
                TicTacBox(
                  tapCallback: () {
                    setState(
                      () {
                        print('clickin');
                        board[0][0] = choice;
                        if (board[0][0] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[0][0] == Choice.cross) {
                          symbol[0][0] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[0][0] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[0][0],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
                TicTacBox(
                  tapCallback: () {
                    setState(
                      () {
                        board[0][1] = choice;
                        if (board[0][1] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[0][1] == Choice.cross) {
                          symbol[0][1] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[0][1] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[0][1],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
                TicTacBox(
                  tapCallback: () {
                    setState(
                      () {
                        board[0][2] = choice;
                        if (board[0][2] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[0][2] == Choice.cross) {
                          symbol[0][2] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol [0][2]= FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[0][2],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                TicTacBox(
                  tapCallback: () {
                    setState(
                      () {
                        board[1][0] = choice;
                        if (board[1][0] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[1][0] == Choice.cross) {
                          symbol[1][0] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[1][0] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[1][0],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
                TicTacBox(
                  tapCallback: () {
                    setState(
                          () {
                        board[1][1] = choice;
                        if (board[1][1] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[1][1] == Choice.cross) {
                          symbol[1][1] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[1][1] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[1][1],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
                TicTacBox(
                  tapCallback: () {
                    setState(
                          () {
                        board[1][2] = choice;
                        if (board[1][2] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[1][2] == Choice.cross) {
                          symbol[1][2] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[1][2] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[1][2],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                TicTacBox(
                  tapCallback: () {
                    setState(
                      () {
                        board[2][0] = choice;
                        if (board[2][0] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[2][0] == Choice.cross) {
                          symbol[2][0] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[2][0] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[2][0],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
                TicTacBox(
                  tapCallback: () {
                    setState(
                          () {
                        board[2][1] = choice;
                        if (board[2][1] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[2][1] == Choice.cross) {
                          symbol[2][1] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[2][1] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[2][1],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
                TicTacBox(
                  tapCallback: () {
                    setState(
                          () {
                        board[2][2] = choice;
                        if (board[2][2] == Choice.empty) {
                          choice = Choice.cross;
                        }
                        if (board[2][2] == Choice.cross) {
                          symbol[2][2] = FontAwesomeIcons.times;
                          choice = Choice.circle;
                        } else {
                          symbol[2][2] = FontAwesomeIcons.circle;
                          choice = Choice.cross;
                        }
                      },
                    );
                  },
                  icon: Icon(
                    symbol[2][2],
                    size: 64,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
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
          ],
        ),
      ),
    );
  }
}

class TicTacBox extends StatelessWidget {
  final Function tapCallback;
  final Widget child;
  final Icon icon;
  final Choice choice;
  TicTacBox({this.child, this.tapCallback, this.icon, this.choice});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: tapCallback,
        child: Container(
          height: 120,
          width: 120,
          margin: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(150),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: icon,
        ),
      ),
    );
  }
}
