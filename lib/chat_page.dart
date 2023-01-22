import 'package:co2/choix.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: dWhite,
    appBar: AppBar(
      backgroundColor: dBlack,
      title: Text('Idées importantes'),
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
        TextSection()
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

class TextSection extends StatelessWidget {
  TextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dWhite,
        child: SingleChildScrollView(
          //scrollDirection: Axis.vertical,
          //child: Padding(
            //padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  height:300,
                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset('assets/images/pexels-tom-fisk-2283496.jpg',
                    //fit: BoxFit.cover,
                    /*height: 100,
                      width: 200,*/
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  color: Colors.deepOrangeAccent,
                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Empreinte Carbone : Agir pour l’Environnement',
                    textAlign: TextAlign.center,

                    style: GoogleFonts.inter(
                      color: Colors.blue,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 30,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Qu’est-ce que l’empreinte carbone ?',
                    textAlign: TextAlign.center,

                    style: GoogleFonts.inter(
                      color: Colors.greenAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 150,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('L’empreinte carbone désigne l’impact environnemental d’un produit,'
                      ' un calcul des gazs à effet de serre émise lors de sa production, son transport et son utilisation. '
                      'Elle varie d’un foyer à l’autre selon différents facteurs, les plus notables pour'
                      ' les ménages étant la source d’énergie utilisée,'
                      ' le transport, l’alimentation, le chauffage, le logement et les services public.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: dBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Comment calculer l’empreinte carbone ?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: Colors.greenAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 250,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('L’empreinte carbone est la quantité de gazs à effet de serre émisepar l’activité humaine. '
                      'Elle est quantifiée et généralisée sous la forme de CO2, cela ne signifie pas que le CO2 est le seul gaz'
                      'à effet de serre.'
                      ' Pour la calculer, on doit prendre en compte toutes les émissions de gez à effet de serre durant '
                      'la production (espace agricole, foin...), le traitement des produits (abatoire, vétérinaire, eau,'
                      ' nourriture...), le transports (vers l abatoire, du produit final...), l utilisation de '
                      'ou de machines (machines agricoles), produits non renouvelables (pétrole, gazs naturels...),'
                      'mais le potentiel de gaz à effet de serre et de formation de couche d ozone est aussi pris '
                      'en compte (dioxyde de carbone (CO2), de gaz hilarant (N2O), et de méthane (CH4).',
                    style: GoogleFonts.inter(
                      color: dBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 30,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('C’est quoi un Kg de CO2 par Kg d’aliment ?',
                    textAlign: TextAlign.center,

                    style: GoogleFonts.inter(
                      color: Colors.greenAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 150,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('On en entends beaucoup parler, mais le Kg de CO2, ça représente quoi concrètement ?\n'
                      'Le CO2, un gaz invisible, incolore et inodore, est le principal gaz à effet de serre. '
                      'Comme tout gaz, sa masse est de 1,964 Kg par m^3. 1 tonne de CO2 correspondrais donc '
                      'au volume d’une bulle de plus de 10 mètres.',
                    style: GoogleFonts.inter(
                      color: dBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Pourquoi calculer son empreinte carbone ?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: Colors.greenAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 150,
                  margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Selon son mode de vie, l’émission de dioxyde de carbone (CO2) varie de façon très forte d’un menage à un autre.\t '
                      ' Mesurer son empreinte carbone (que ce soit du CO2 ou autres gazs à effet de serre) permet à une peronne ou une entreprise'
                      ' à réduire son impact sur l’environnement.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: dBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
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


/*class Definition extends StatelessWidget {
  Definition({Key? key}) : super(key: key);
  final List definition = [
    {'message': 'Comment calculer son empreinte carbone ?',
    'definition': 'L’empreinte carbone est un calcul des'
        ' émissions de GES associées à la consommation au'
        ' sens large (demande finale intérieure) d’un pays,'
        ' quelle que soit l’origine géographique de la production'
        ' des biens et services destinés à satisfaire cette consommation.'
        ' Cette approche se distingue de l’inventaire national du bilan'
        ' carbone, qui mesure les émissions sur le territoire'
        ' (appelée approche territoriale).'},
    {'message': 'Qu’est-ce que l’empreinte carbone ?',
    'definition': 'émissions de GES associées à la consommation au'},
    {'message': 'Pourquoi calculer son empreinte carbone ?',
    'definition': 'quelle que soit l’origine géographique de la production'}];

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
        children: definition.map((message) {
          return InkWell(
            onTap: () {},
            splashColor: dGreen,
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Text(message['definition']),
              /*child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
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
                                color: dBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(message['definition'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 9,
                              style: GoogleFonts.inter(
                                color: dBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          color: Colors.white,
                          height: 0.5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),*/
            ),
          );
        }).toList(),
      ),
    );
  }

}*/
