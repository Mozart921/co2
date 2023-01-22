import 'package:co2/choix.dart';
import 'package:co2/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_page.dart';


const dGreen = Color(0xFF2ac0a6);
const dWhite = Color(0xFFe8f4f2);
const dBlack = Color(0xFF34322f);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CO2',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        title: Text('Empreinte Carbone'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: dWhite,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: dWhite,
              size: 30,
            ),
          ),
        ],
      ),
          body: Column(
            children: [
              MenuSection(),
              FavoriteSection(),
              Expanded(child:
              MessageSection(),
              ),
            ],
          ),
      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        /*Le boutton + enmène à une page avec des choix d'actions*/
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Liste();
              },
            ),
          );
        },
        backgroundColor: dGreen,
        child: const Icon(Icons.add,
        size: 20,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      //body: Container(),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = [{'item': 'Eméteurs de carbone:  '},
{'item': 'Transport & '},
{'item': 'Alimentation  '},
/*{'item': 'Logement - '},
{'item': 'Services Public - '},
{'item': 'Chauffage  '}*/];

  MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: menuItems.map((item) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChoixPage(),
                      ),
                    );
                  },
                splashColor: dGreen,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(item['item'],
                          style: GoogleFonts.inter(
                            color: dWhite,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      color: Colors.grey[400],
                      height: 0.5,
                      margin: const EdgeInsets.only(right: 55),
                    )
                  ],
                ),

              );
              /*return Container(
                margin: const EdgeInsets.only(right: 55),
                  child: Text(
                      item,
                    style: GoogleFonts.inter(
                      color: Colors.white60,
                      fontSize: 20,
                    ),
                  ),
              );*/
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class FavoriteSection extends StatelessWidget {
  FavoriteSection({Key? key}) : super(key: key);
  final List favoriteContacts = [
    {
      'name': 'Alla',
    },
    {
      'name': 'Steve',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
          color: dGreen,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Container(
          height: 80,
          margin: new EdgeInsets.symmetric(horizontal: 20.0),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: const BoxDecoration(
            color: dGreen,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              /*leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: dWhite,
            size: 30,
          ),
        ),*/
            )
          ),
        ),
        /*child: FlatButton(
          onPressed: () => {},
          color: dGreen,
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(Icons.add),
              Text("Ajouter")
            ],
          ),
        ),*/

      ),
    );
  }

}

class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);
  final List messages = [
    {'message': 'Comment calculer son empreinte carbone ?'},
{'message': 'Qu’est-ce que l’empreinte carbone ?'},
{'message': 'Pourquoi calculer son empreinte carbone ?'}];

  @override
  Widget build(BuildContext context) {
    /*return Container(
      color: dBlack,
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
          color: dWhite,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),

      ),
    );*/
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatPage(),
                ),
              );
            },
            splashColor: dGreen,
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              //child: Text(message['message']),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.only(right: 10, bottom: 15),
                    decoration: BoxDecoration(
                      color: dBlack,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                    Text(message['message'],
                      style: GoogleFonts.inter(
                        color: Colors.grey.shade800,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          color: Colors.grey[400],
                          height: 0.5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

}



/*class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

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
            Text(
              'Voici votre empreinte carbone en grammes:',
              style: GoogleFonts.nunito(
                color: Colors.brown,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        /*Le boutton + enmène à une page avec des choix d'actions*/
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ChoixPage();
              },
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
