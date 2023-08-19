
import 'package:d_d/screen/e_belediye/e_anasayfa.dart';
import 'package:d_d/screen/ilce_tanitim/anasayfa.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xff436796),
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [
             Colors.blueGrey.shade300,
             Color(0xff436796),

           ],
         ),
       ),
       child: Column(
         children: [
           SizedBox(
             height: 350,
             width: 350,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CircleAvatar(
                   backgroundImage:AssetImage("assets/logo.jpg"),
                   radius: 100,
                 ),
               ],
             ),
           ),
           SizedBox(
             child:Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "DEVELİ BELEDİYESİ ",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                     //backgroundColor: Color(0xff60B2D7)
                    ),
                  ),
                ],
           ),
           ),
           SizedBox(
             height: 10,
           ),
           SizedBox(
             child: Text(
               "-1871-",
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
           SizedBox(
             height: 50,
           ),
           SizedBox(
             height: 120,
          child: Container(
            color: Color(0xff60B2D7),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HOŞGELDİNİZ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
         ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: SizedBox(
               child: ElevatedButton(
                 style: ButtonStyle(
                   backgroundColor: MaterialStatePropertyAll(Color(0xff60B2D7))
                 ),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => EanaSayfa())
                   );
                 },
                 child: Text(
                     "E-Belediye",
                   style: TextStyle(
                     fontSize: 20,
                     color: Colors.white
                   ),
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: SizedBox(
               child: ElevatedButton(
                 style: ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(Color(0xff60B2D7))
                 ),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())
                   );
                 },
                 child: Text(
                   "İlçemizi Tanıyalım",
                   style: TextStyle(
                       fontSize: 20,
                       color: Colors.white
                   ),
                 ),
               ),
             ),
           )
          ],
       ),
     ),
    );
  }
}
