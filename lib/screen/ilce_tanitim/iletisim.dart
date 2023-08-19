import 'package:flutter/material.dart';
import 'anasayfa.dart';
class Iletisim extends StatelessWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff436796),
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("--İLETİŞİM--",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: CardWidget(),
    );
  }
}
class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/ercıyes.jpg"),
    fit: BoxFit.cover,
    ),
    ),
      child :Center(
      child: Column(
        children: [
          Container(
            child: SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage("assets/logo.jpg"),
                    radius: 50,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xff60B2D7),
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.white, size: 32),
                      title: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Telefon Numarası',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '0352 621 60 41',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xff60B2D7),
                    child: ListTile(
                      leading: Icon(Icons.print, color: Colors.white, size: 32),
                      title: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Faks Numarası',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '0352 621 24 74',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xff60B2D7),
                    child: ListTile(
                      leading: Icon(Icons.location_on, color: Colors.white, size: 32),
                      title: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Adres',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Mehmet Akif Ersoy Mahallesi Gönül Caddesi No:1 DEVELİ / KAYSERİ',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xff60B2D7),
                    child: ListTile(
                      leading: Icon(Icons.mail, color: Colors.white, size: 32),
                      title: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Mail Adresi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ınfo@develi.bel.com',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
