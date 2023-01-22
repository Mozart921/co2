import 'package:co2/autobus.dart';
import 'package:co2/boeuf.dart';
import 'package:co2/choix.dart';
import 'package:co2/covoiturage.dart';
import 'package:co2/ma%C3%AFs.dart';
import 'package:co2/mcdo.dart';
import 'package:co2/poulet.dart';
import 'package:co2/train.dart';
import 'package:co2/voiture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Liste extends StatelessWidget {
  const Liste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dWhite,
      appBar: AppBar(
        backgroundColor: dBlack,
        title: Text('Produits Communs'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 23,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 23,
            ),
            onPressed: () {},
          ),
        ],
      ),
      //body: Definition(),
      body: SingleChildScrollView(
          child:
          ListProduit()
        /*Container(
          height: 50,
          margin: new EdgeInsets.only(left: 20.0),
            child: Text('Qu’est-ce que l’empreinte carbone ?',
              style: GoogleFonts.inter(
                color: Colors.blueGrey,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
        ),
        Container(
          height: 150,
          margin: new EdgeInsets.only(left: 20.0),
          child: Text('L’empreinte carbone est la quantité de gazs à effet de serre émisepar l’activité humaine. '
              'Elle dépends de différents facteurs, les plus notables étant les sources d’énergie utilisée,'
              ' le transport, l’alimentation, le chauffage, le logement et les services public.',
            style: GoogleFonts.inter(
              color: dBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: new EdgeInsets.only(left: 20.0),
          child: Text('Comment calculer l’empreinte carbone ?',
            style: GoogleFonts.inter(
              color: Colors.blueGrey,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 150,
          margin: new EdgeInsets.only(left: 20.0),
          child: Text('L’empreinte carbone est la quantité de gazs à effet de serre émisepar l’activité humaine. '
              'Elle dépends de différents facteurs, les plus notables étant les sources d’énergie utilisée,'
              ' le transport, l’alimentation, le chauffage, le logement et les services public.',
            style: GoogleFonts.inter(
              color: dBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: new EdgeInsets.only(left: 20.0),
          child: Text('Pourquoi calculer son empreinte carbone ?',
            style: GoogleFonts.inter(
              color: Colors.blueGrey,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 150,
          margin: new EdgeInsets.only(left: 20.0),
          child: Text('Selon son mode de vie, l’émission de dioxyde de carbone (CO2) varie d’une personne à une autre.\t '
              ' Mesurer son empreinte carbone (que ce soit du CO2 ou autres gazs à effet de serre) permet à une peronne ou une entreprise à réduire son impact sur l’environnement.',
            style: GoogleFonts.inter(
              color: dBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),*/
      ),
    );}
}

class ListProduit extends StatelessWidget {
  ListProduit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pexels-akil-mazumder-1072824.jpg'),
            fit: BoxFit.cover,
          ),
        ),*/
        color: dWhite,
        child: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          //child: Padding(
          //padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 30,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Produits du Quotidien ',
                      textAlign: TextAlign.center,

                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 30,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Aliments : ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  /*DefaultTabController(length: 3,
                      child: Expanded(
                        child: Column(
                          children: [
                            TabBar(
                              indicatorColor: Colors.redAccent,
                                unselectedLabelColor: Colors.black38,
                                tabs: [
                                  Tab(
                                    text: 'Aliment',
                                  ),
                                  Tab(
                                    text: 'Outil',
                                  )
                                ],
                            )
                          ],
                        ),
                      )
                  )*/
                  Container(
                    color: Colors.lime,
                    height: 300,
                    margin: new EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              //child: Image.asset('assets/images/volaille.jpg'),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/volaille.jpg'),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                    /*onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PouletPage(),
                                        ),
                                      );
                                    },*/
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                            builder: (context) {
                                          return PouletPage();
                                        },
                                        ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.lightGreenAccent,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        image: DecorationImage(image: AssetImage('assets/images/maïs.jpg'),
                                            fit: BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return MaisPage();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        image: DecorationImage(image: AssetImage('assets/images/boeuf.jpg'),
                                            fit: BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return BoeufPage();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        image: DecorationImage(image: AssetImage('assets/images/mcdo.jpg'),
                                            fit: BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return McdoPage();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            /*ListView(
                              children: [
                                Container(
                                  color: Colors.yellow,
                                  height: 30,
                                  width: 50,
                                ),
                                Container(
                                  color: Colors.lightGreenAccent,
                                  height: 30,
                                  width: 50,
                                ),
                                Container(
                                  color: Colors.amber,
                                  height: 30,
                                  width: 50,
                                ),
                              ],
                              scrollDirection: Axis.horizontal,
                            )*/
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Transport : ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    color: Colors.lime,
                    height: 300,
                    margin: new EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              //child: Image.asset('assets/images/volaille.jpg'),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/train.jpg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    /*onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PouletPage(),
                                        ),
                                      );
                                    },*/
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return TrainPage();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.lightGreenAccent,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        image: DecorationImage(image: AssetImage('assets/images/autobus.jpg'),
                                            fit: BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return AutobusPage();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        image: DecorationImage(image: AssetImage('assets/images/covoiturage.jpg'),
                                            fit: BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return CovoituragePage();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        image: DecorationImage(image: AssetImage('assets/images/voiture.jpg'),
                                            fit: BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return VoiturePage();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.search_rounded,
                                        color: dWhite,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            /*ListView(
                              children: [
                                Container(
                                  color: Colors.yellow,
                                  height: 30,
                                  width: 50,
                                ),
                                Container(
                                  color: Colors.lightGreenAccent,
                                  height: 30,
                                  width: 50,
                                ),
                                Container(
                                  color: Colors.amber,
                                  height: 30,
                                  width: 50,
                                ),
                              ],
                              scrollDirection: Axis.horizontal,
                            )*/
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            )
          //),
        )

    );
  }
}