import 'package:co2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';


class TrainPage extends StatelessWidget {
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
          color: Colors.green,
          size: 22,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
          'Train ',
        style: TextStyle(color: Colors.green),
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
        color: Colors.white,
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
                    child: Image.asset('assets/images/train.jpg',
                      //fit: BoxFit.cover,
                      /*height: 100,
                      width: 200,*/
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Le Bilan Carbone d un train ',
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
                    child: Text('Ici, nous allons observer la quantité de CO2'
                        ' émise par un train. ',
                      style: GoogleFonts.inter(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Prenons l exemple d un trajet Paris-Marseille : '
                        'en train, ce trajet durre 3h05 et emmet 1,7KG de CO2,'
                        ' ce qui est excellent au niveau environnemental comparé '
                        'à d autres alternatives de transport.',
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
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 155,
                    margin: new EdgeInsets.only(left: 20.0),
                    child: Text('Pour le même trajet, l émission de CO2 en autocar '
                        'est 16 fois celle du train (21,1KG de CO2), en covoiturage, '
                        'c est 40 fois celle du train (68,2KG de CO2), en avion, '
                        'c est 50 fois plus que le train (85KG de CO2), et en '
                        'voiture, on a la pire émission de CO2  (149,6KG de CO2)'
                        ' avec 88 fois celle du train.',
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
