import 'package:co2/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class McdoPage extends StatelessWidget {
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
          'Mcdo '
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
                    child: Image.asset('assets/images/mcdo.jpg',
                      //fit: BoxFit.cover,
                      /*height: 100,
                      width: 200,*/
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Le Bilan Carbone du Mcdo ',
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
                    child: Text('les d??placements quotidiens (voiture, bus, m??tro, tramway ou encore v??lo)'
                        ' et les d??placements plus exceptionnels, par exemple par avion ou en train ;',
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
                    child: Text('Maison et ??nergie : ',
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
                    child: Text('le type de logement (maison, appartement), sa surface, le nombre d???habitants,'
                        ' les appareils m??nagers utilis??s, le type d?????nergie, de chauffage, d???isolation du '
                        'logement etc. ',
                      textAlign: TextAlign.center,
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
                    child: Text('Consommation et style de vie : ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('le r??gime alimentaire, les appareils ??lectroniques utilis??s, les d??penses'
                        ' en v??tements et en produits pharmaceutiques, d???hygi??ne ou de beaut??, le recyclage'
                        ' des d??chets etc.).',
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
