import 'package:co2/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PouletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: MyContainer(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 22,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
          'Volaille '
      ),
      backgroundColor: dBlack,
    );
  }
}

class MyContainer extends StatelessWidget {
  MyContainer({Key? key}) : super(key: key);

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
          //scrollDirection: Axis.vertical,
          //child: Padding(
          //padding: const EdgeInsets.all(15),
            child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height:300,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Image.asset('assets/images/volaille.jpg',
                      //fit: BoxFit.cover,
                      /*height: 100,
                      width: 200,*/
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Le Bilan Carbone du poulet ',
                      textAlign: TextAlign.center,

                      style: GoogleFonts.inter(
                        color: Colors.blueAccent,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Ici, nous allons observer l impact que la consomation de volaille '
                        'sur notre environnement. ',
                      style: GoogleFonts.inter(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Transports : ',
                      textAlign: TextAlign.center,

                      style: GoogleFonts.inter(
                        color: Colors.redAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('On estime que la consomation de volaille et moin polluante '
                        'compar?? ?? laplupart des viandes sur le march??. Pour donner une '
                        'id??e plus parlante, la consomation d 1 KG de volaille ??quivaut ?? '
                        'la pollution produite par un trajet de 7 KM, ce qui est faible '
                        'dans une comparaison avec d autres viandes. Cela peut varier en '
                        'fonction du lieu mais que faiblement. La partie qui ?? le plus '
                        'grand impact sur l environnement est toujours la production.',
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
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Bilan Comparatif : ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.redAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 155,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Tous les enjeux sout pris en compte dans le Bilan '
                        'Carbone comparatif, c???est ?? dire de l???exploitation globale '
                        '?? l exploitation du produit (fourrage, machines,'
                        'carburant ...), mais le plus important, c???est le mode '
                        'de production. C???est comme cela qui l???impact sur l???environnement '
                        '?? ??t?? quantifi?? en g de CO2.\n'
                        'besoins en surface (terres arables, prairies et p??turages,'
                        ' for??ts et surfaces d???habitat), et d??forestation des surfaces bois??es. \n'
                        'Le bilan comparatif ?? ??t?? fait entre une volaille conventionnelle, et '
                        'une bio. Les besoins en energie pour l?????levage de poulet bio est '
                        'n??tement plus ??lev??e.',
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
